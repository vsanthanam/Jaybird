//
//  JaybirdParser.c
//  Jaybird
//
//  Created by Varun Santhanam on 4/29/25.
//

#include "Parser.h"
#include <string.h>
#include <ctype.h>
#include <float.h>

// SIMD headers based on architecture
#if defined(__x86_64__) || defined(_M_X64)
#include <emmintrin.h> // SSE2
#include <immintrin.h> // AVX2 if available
#elif defined(__aarch64__) || defined(__arm64__)
#include <arm_neon.h>
#endif

// Define memory arena block size (adjust based on profiling)
#define JSON_ARENA_BLOCK_SIZE (64 * 1024)    // 64KB blocks for small files
#define JSON_ARENA_LARGE_SIZE (256 * 1024)   // 256KB blocks for large files
#define JSON_SMALL_JSON_THRESHOLD (100 * 1024) // 100KB threshold to decide if a JSON is "small"

// Memory arena structure
typedef struct json_memory_block {
    char* memory;                        // Block of memory
    size_t size;                         // Total size of the block
    size_t used;                         // Amount of memory used in the block
    struct json_memory_block* next;        // Next block in the chain
} json_memory_block_t;

// Memory arena
typedef struct json_memory_arena {
    json_memory_block_t* head;             // First block in the arena
    json_memory_block_t* current;          // Current block for allocation
    size_t total_size;                   // Total size of all blocks
    size_t block_size;                   // Size of blocks to allocate
} json_memory_arena_t;

static json_value_t* json_create_value_from_arena(json_memory_arena_t* arena);

json_memory_arena_t* json_arena_init(size_t input_size);

void json_arena_free(json_memory_arena_t* arena);

// Initialize a memory arena
json_memory_arena_t* json_arena_init(size_t input_size) {
    json_memory_arena_t* arena = (json_memory_arena_t*)malloc(sizeof(json_memory_arena_t));
    if (!arena) return NULL;
    
    arena->head = NULL;
    arena->current = NULL;
    arena->total_size = 0;
    
    // Choose block size based on input size to avoid excessive memory usage
    // for small files while still handling large files efficiently
    if (input_size < JSON_SMALL_JSON_THRESHOLD) {
        arena->block_size = JSON_ARENA_BLOCK_SIZE;
    } else {
        arena->block_size = JSON_ARENA_LARGE_SIZE;
    }
    
    return arena;
}

// Allocate a new block in the arena
static json_memory_block_t* json_arena_add_block(json_memory_arena_t* arena, size_t min_size) {
    // Calculate block size (at least arena->block_size or min_size)
    size_t block_size = arena->block_size;
    if (min_size > block_size) {
        block_size = min_size;
    }
    
    // Allocate new block
    json_memory_block_t* block = (json_memory_block_t*)malloc(sizeof(json_memory_block_t));
    if (!block) return NULL;
    
    block->memory = (char*)malloc(block_size);
    if (!block->memory) {
        free(block);
        return NULL;
    }
    
    block->size = block_size;
    block->used = 0;
    block->next = NULL;
    
    // Add to arena
    if (!arena->head) {
        arena->head = block;
    } else {
        arena->current->next = block;
    }
    
    arena->current = block;
    arena->total_size += block_size;
    
    return block;
}

// Allocate memory from the arena
void* json_arena_alloc(json_memory_arena_t* arena, size_t size) {
    // Align to 8-byte boundary for proper alignment of all types
    size = (size + 7) & ~7;
    
    // If we don't have a block yet or current block doesn't have enough space
    if (!arena->current || (arena->current->size - arena->current->used) < size) {
        if (!json_arena_add_block(arena, size)) {
            return NULL;
        }
    }
    
    // Allocate from current block
    void* ptr = arena->current->memory + arena->current->used;
    arena->current->used += size;
    
    return ptr;
}

// Free an entire arena
void json_arena_free(json_memory_arena_t* arena) {
    if (!arena) return;
    
    json_memory_block_t* block = arena->head;
    while (block) {
        json_memory_block_t* next = block->next;
        free(block->memory);
        free(block);
        block = next;
    }
    
    free(arena);
}

// Define small string size limit
#define SMALL_STRING_SIZE 15

// Define key structure for small string optimization
typedef struct json_key {
    union {
        char* ptr;       // Dynamically allocated string for long strings
        char buf[16];    // Fixed buffer for small strings
    } data;
    size_t length;
    bool is_small;       // Flag to indicate if using small string optimization
} json_key_t;

// Define the structure for JSON values
struct json_value {
    json_type_t type;
    json_memory_arena_t* arena;           // Reference to the arena that allocated this value
    union {
        bool boolean;
        int64_t integer;
        double number;
        struct {
            // Small string optimization: for strings <= SMALL_STRING_SIZE, store directly in the struct
            union {
                char* ptr;       // Dynamically allocated string for long strings
                char buf[16];    // Fixed buffer for small strings
            } data;
            size_t length;
            bool is_small;       // Flag to indicate if using small string optimization
        } string;
        struct {
            struct json_value** elements;
            size_t count;
            size_t capacity;
        } array;
        struct {
            // Key storage - now using small string optimization
            json_key_t* keys;
            struct json_value** values;
            size_t count;
            size_t capacity;
        } object;
    } data;
};

// Parser state
typedef struct {
    const uint8_t* input;
    size_t length;
    size_t index;
    char* temp_buffer;
    size_t temp_size;
    size_t temp_capacity;
    json_memory_arena_t* arena;  // Memory arena for allocations
} json_parser_t;

// Error messages
static const char* error_messages[] = {
    "No error",
    "Unexpected end of input",
    "Invalid JSON",
    "Invalid character",
    "Expected ':' after key in object",
    "Expected ',' or '}' in object",
    "Expected ',' or ']' in array",
    "Invalid literal",
    "Invalid number",
    "Invalid string",
    "Missing object key",
    "Invalid Unicode sequence",
    "Invalid escape sequence",
    "Out of memory"
};

// Helper function to get error message
const char* json_get_error_message(json_error_t error) {
    if (error < 0 || error >= sizeof(error_messages) / sizeof(error_messages[0])) {
        return "Unknown error";
    }
    return error_messages[error];
}

// Memory management helpers
static json_value_t* json_create_value() {
    json_value_t* value = (json_value_t*)calloc(1, sizeof(json_value_t));
    return value;
}

// Create a value using the arena allocator
static json_value_t* json_create_value_from_arena(json_memory_arena_t* arena) {
    if (!arena) return NULL;
    
    json_value_t* value = (json_value_t*)json_arena_alloc(arena, sizeof(json_value_t));
    if (value) {
        // Zero out the memory
        memset(value, 0, sizeof(json_value_t));
        // Store reference to the arena for later cleanup
        value->arena = arena;
    }
    return value;
}

void json_free(json_value_t* value) {
    if (!value) return;
    
    // Free the arena which will free all memory
    if (value->arena) {
        json_arena_free(value->arena);
    }
}

// Value creation helpers
static json_value_t* json_create_null(json_memory_arena_t* arena) {
    json_value_t* value = json_create_value_from_arena(arena);
    if (value) {
        value->type = JSON_NULL;
    }
    return value;
}

static json_value_t* json_create_boolean(json_memory_arena_t* arena, bool b) {
    json_value_t* value = json_create_value_from_arena(arena);
    if (value) {
        value->type = JSON_BOOLEAN;
        value->data.boolean = b;
    }
    return value;
}

static json_value_t* json_create_int(json_memory_arena_t* arena, int64_t i) {
    json_value_t* value = json_create_value_from_arena(arena);
    if (value) {
        value->type = JSON_NUMBER_INT;
        value->data.integer = i;
    }
    return value;
}

static json_value_t* json_create_double(json_memory_arena_t* arena, double d) {
    json_value_t* value = json_create_value_from_arena(arena);
    if (value) {
        value->type = JSON_NUMBER_DOUBLE;
        value->data.number = d;
    }
    return value;
}

static json_value_t* json_create_string(json_memory_arena_t* arena, const char* str, size_t len) {
    json_value_t* value = json_create_value_from_arena(arena);
    if (!value) return NULL;
    
    value->type = JSON_STRING;
    value->data.string.length = len;
    
    // Use small string optimization for strings that fit
    if (len <= SMALL_STRING_SIZE) {
        value->data.string.is_small = true;
        if (str && len > 0) {
            memcpy(value->data.string.data.buf, str, len);
        }
        value->data.string.data.buf[len] = '\0';
    } else {
        // Use arena allocation for larger strings
        value->data.string.is_small = false;
        
        // Allocate space for the string + null terminator from the arena
        value->data.string.data.ptr = (char*)json_arena_alloc(arena, len + 1);
        if (!value->data.string.data.ptr) {
            return NULL; // Arena allocation failed
        }
        
        if (str && len > 0) {
            memcpy(value->data.string.data.ptr, str, len);
        }
        value->data.string.data.ptr[len] = '\0';
    }
    
    return value;
}

static json_value_t* json_create_array(json_memory_arena_t* arena) {
    json_value_t* value = json_create_value_from_arena(arena);
    if (!value) return NULL;
    
    value->type = JSON_ARRAY;
    value->data.array.count = 0;
    value->data.array.capacity = 8;  // Initial capacity
    
    // Allocate elements array from the arena
    value->data.array.elements = (struct json_value**)json_arena_alloc(arena, 
                                    value->data.array.capacity * sizeof(struct json_value*));
    
    if (!value->data.array.elements) {
        return NULL;
    }
    
    return value;
}

static json_value_t* json_create_object(json_memory_arena_t* arena) {
    json_value_t* value = json_create_value_from_arena(arena);
    if (!value) return NULL;
    
    value->type = JSON_OBJECT;
    value->data.object.count = 0;
    value->data.object.capacity = 8;  // Initial capacity
    
    // Allocate key struct array from the arena
    value->data.object.keys = (json_key_t*)json_arena_alloc(arena, 
                                value->data.object.capacity * sizeof(json_key_t));
    
    // Allocate values array from the arena
    value->data.object.values = (struct json_value**)json_arena_alloc(arena, 
                                  value->data.object.capacity * sizeof(struct json_value*));
    
    if (!value->data.object.keys || !value->data.object.values) {
        return NULL;
    }
    
    return value;
}

// Helper function to store a key using small string optimization
static void json_store_key(json_value_t* object, size_t index, const char* key, size_t key_len, json_memory_arena_t* arena) {
    if (key_len <= SMALL_STRING_SIZE) {
        // Use small string optimization
        object->data.object.keys[index].is_small = true;
        memcpy(object->data.object.keys[index].data.buf, key, key_len);
        object->data.object.keys[index].data.buf[key_len] = '\0';
    } else {
        // Use arena allocation
        object->data.object.keys[index].is_small = false;
        object->data.object.keys[index].data.ptr = (char*)json_arena_alloc(arena, key_len + 1);
        if (object->data.object.keys[index].data.ptr) {
            memcpy(object->data.object.keys[index].data.ptr, key, key_len);
            object->data.object.keys[index].data.ptr[key_len] = '\0';
        }
    }
    object->data.object.keys[index].length = key_len;
}

// Helper to add an element to an array
static json_error_t json_array_push(json_value_t* array, json_value_t* element, json_memory_arena_t* arena) {
    if (array->type != JSON_ARRAY) return JSON_INVALID_JSON;
    
    if (array->data.array.count >= array->data.array.capacity) {
        size_t new_capacity = array->data.array.capacity * 2;
        
        // Allocate new array from arena
        struct json_value** new_elements = (struct json_value**)json_arena_alloc(arena, 
                                                          new_capacity * sizeof(struct json_value*));
        if (!new_elements) return JSON_OUT_OF_MEMORY;
        
        // Copy old elements to new array
        memcpy(new_elements, array->data.array.elements, 
               array->data.array.count * sizeof(struct json_value*));
        
        // Update array with new elements
        array->data.array.elements = new_elements;
        array->data.array.capacity = new_capacity;
    }
    
    array->data.array.elements[array->data.array.count++] = element;
    return JSON_NO_ERROR;
}

// Helper to add a key-value pair to an object
static json_error_t json_object_set(json_value_t* object, const char* key, size_t key_len, json_value_t* value, json_memory_arena_t* arena) {
    if (object->type != JSON_OBJECT) return JSON_INVALID_JSON;
    
    // Check if we need to expand the object
    if (object->data.object.count >= object->data.object.capacity) {
        size_t new_capacity = object->data.object.capacity * 2;
        
        // Allocate new keys array from arena
        json_key_t* new_keys = (json_key_t*)json_arena_alloc(arena, 
                                          new_capacity * sizeof(json_key_t));
        
        // Allocate new values array from arena
        struct json_value** new_values = (struct json_value**)json_arena_alloc(arena, 
                                                     new_capacity * sizeof(struct json_value*));
        
        if (!new_keys || !new_values) {
            return JSON_OUT_OF_MEMORY;
        }
        
        // Copy existing data
        memcpy(new_keys, object->data.object.keys, 
               object->data.object.count * sizeof(json_key_t));
        memcpy(new_values, object->data.object.values, 
               object->data.object.count * sizeof(struct json_value*));
        
        object->data.object.keys = new_keys;
        object->data.object.values = new_values;
        object->data.object.capacity = new_capacity;
    }
    
    // Store the key with small string optimization
    json_store_key(object, object->data.object.count, key, key_len, arena);
    
    // Store the value
    object->data.object.values[object->data.object.count] = value;
    object->data.object.count++;
    
    return JSON_NO_ERROR;
}

// Parser initialization and cleanup
static void json_parser_init(json_parser_t* parser, const uint8_t* input, size_t length) {
    parser->input = input;
    parser->length = length;
    parser->index = 0;
    parser->temp_buffer = NULL;
    parser->temp_size = 0;
    parser->temp_capacity = 0;
    parser->arena = json_arena_init(length);  // Initialize the arena
}

static void json_parser_cleanup(json_parser_t* parser) {
    free(parser->temp_buffer);
    parser->temp_buffer = NULL;
    
    // We no longer free the arena here - arenas are either:
    // 1. Reset after successful parsing (in json_parse)
    // 2. Freed after failed parsing (in json_parse)
}

// Temp buffer management
static json_error_t json_temp_buffer_ensure_capacity(json_parser_t* parser, size_t needed) {
    if (parser->temp_size + needed > parser->temp_capacity) {
        size_t new_capacity = parser->temp_capacity;
        if (new_capacity == 0) {
            new_capacity = 128;  // Smaller initial capacity (was 512)
        }
        
        while (parser->temp_size + needed > new_capacity) {
            new_capacity *= 2;
        }
        
        char* new_buffer = (char*)realloc(parser->temp_buffer, new_capacity);
        if (!new_buffer) return JSON_OUT_OF_MEMORY;
        
        parser->temp_buffer = new_buffer;
        parser->temp_capacity = new_capacity;
    }
    
    return JSON_NO_ERROR;
}

static json_error_t json_temp_buffer_append(json_parser_t* parser, const char* data, size_t length) {
    json_error_t err = json_temp_buffer_ensure_capacity(parser, length);
    if (err != JSON_NO_ERROR) return err;
    
    memcpy(parser->temp_buffer + parser->temp_size, data, length);
    parser->temp_size += length;
    
    return JSON_NO_ERROR;
}

static json_error_t json_temp_buffer_append_byte(json_parser_t* parser, char byte) {
    return json_temp_buffer_append(parser, &byte, 1);
}

static void json_temp_buffer_clear(json_parser_t* parser) {
    parser->temp_size = 0;
}


json_type_t json_get_type(const json_value_t* value) {
    return value ? value->type : JSON_NULL;
}

bool json_get_boolean(const json_value_t* value) {
    return (value && value->type == JSON_BOOLEAN) ? value->data.boolean : false;
}

int64_t json_get_int(const json_value_t* value) {
    if (!value) return 0;
    
    if (value->type == JSON_NUMBER_INT) {
        return value->data.integer;
    } else if (value->type == JSON_NUMBER_DOUBLE) {
        // Potential loss of precision
        return (int64_t)value->data.number;
    }
    
    return 0;
}

double json_get_double(const json_value_t* value) {
    if (!value) return 0.0;
    
    if (value->type == JSON_NUMBER_DOUBLE) {
        return value->data.number;
    } else if (value->type == JSON_NUMBER_INT) {
        return (double)value->data.integer;
    }
    
    return 0.0;
}

const char* json_get_string(const json_value_t* value) {
    if (!value || value->type != JSON_STRING) return NULL;
    return value->data.string.is_small ? value->data.string.data.buf : value->data.string.data.ptr;
}

size_t json_get_string_length(const json_value_t* value) {
    return (value && value->type == JSON_STRING) ? value->data.string.length : 0;
}

// Array operations
size_t json_get_array_size(const json_value_t* array) {
    return (array && array->type == JSON_ARRAY) ? array->data.array.count : 0;
}

json_value_t* json_get_array_element(const json_value_t* array, size_t index) {
    if (!array || array->type != JSON_ARRAY || index >= array->data.array.count) {
        return NULL;
    }
    return array->data.array.elements[index];
}

// Helper function to get a key string (updated to handle small string optimization)
static const char* json_get_object_key_internal(const json_value_t* object, size_t index) {
    if (!object || object->type != JSON_OBJECT || index >= object->data.object.count) {
        return NULL;
    }
    
    // Return pointer based on whether the key uses small string optimization
    return object->data.object.keys[index].is_small 
        ? object->data.object.keys[index].data.buf 
        : object->data.object.keys[index].data.ptr;
}

// Object operations
size_t json_get_object_size(const json_value_t* object) {
    return (object && object->type == JSON_OBJECT) ? object->data.object.count : 0;
}

const char* json_get_object_key(const json_value_t* object, size_t index) {
    return json_get_object_key_internal(object, index);
}

json_value_t* json_get_object_value(const json_value_t* object, size_t index) {
    if (!object || object->type != JSON_OBJECT || index >= object->data.object.count) {
        return NULL;
    }
    return object->data.object.values[index];
}

json_value_t* json_get_object_value_by_key(const json_value_t* object, const char* key) {
    if (!object || object->type != JSON_OBJECT || !key) {
        return NULL;
    }
    
    for (size_t i = 0; i < object->data.object.count; i++) {
        const char* obj_key = json_get_object_key_internal(object, i);
        if (obj_key && strcmp(obj_key, key) == 0) {
            return object->data.object.values[i];
        }
    }
    
    return NULL;
}

// Parser core functions

// Check if there's more input available
static bool json_has_more(json_parser_t* parser) {
    return parser->index < parser->length;
}

// Peek at current byte without advancing
static uint8_t json_peek(json_parser_t* parser) {
    if (parser->index >= parser->length) {
        return 0;
    }
    return parser->input[parser->index];
}

// Get current byte and advance
static uint8_t json_next(json_parser_t* parser) {
    if (parser->index >= parser->length) {
        return 0;
    }
    return parser->input[parser->index++];
}

// SIMD-optimized whitespace consumption
static void json_consume_whitespace(json_parser_t* parser) {
#if defined(__x86_64__) || defined(_M_X64)
    // SSE2 implementation for x86-64
    const size_t remaining = parser->length - parser->index;
    
    // Fast path for the common case - no or minimal whitespace
    // Check the first character directly before using SIMD
    if (remaining > 0) {
        uint8_t c = parser->input[parser->index];
        if (!(c == ' ' || c == '\t' || c == '\n' || c == '\r')) {
            return;  // No whitespace to skip
        }
        
        // Check the second character if available
        if (remaining > 1) {
            c = parser->input[parser->index + 1];
            if (!(c == ' ' || c == '\t' || c == '\n' || c == '\r')) {
                parser->index++;
                return;  // Just one whitespace character
            }
        }
    }
    
    // More than 1 whitespace, use SIMD for blocks
    if (remaining >= 16) {
        // Process 16 bytes at a time with SSE2
        const __m128i space = _mm_set1_epi8(' ');
        const __m128i tab = _mm_set1_epi8('\t');
        const __m128i newline = _mm_set1_epi8('\n');
        const __m128i carriage = _mm_set1_epi8('\r');
        
        while (parser->index + 16 <= parser->length) {
            // Load 16 bytes from input
            __m128i input = _mm_loadu_si128((__m128i*)(parser->input + parser->index));
            
            // Compare with whitespace characters
            __m128i eq_space = _mm_cmpeq_epi8(input, space);
            __m128i eq_tab = _mm_cmpeq_epi8(input, tab);
            __m128i eq_newline = _mm_cmpeq_epi8(input, newline);
            __m128i eq_cr = _mm_cmpeq_epi8(input, carriage);
            
            // Combine results with OR
            __m128i is_whitespace = _mm_or_si128(
                _mm_or_si128(eq_space, eq_tab),
                _mm_or_si128(eq_newline, eq_cr)
            );
            
            // Create mask
            unsigned int mask = _mm_movemask_epi8(is_whitespace);
            
            // Find first non-whitespace character
            if (mask != 0xFFFF) {
                // Find the position of the first 0 bit
                unsigned int trailing_ones = __builtin_ctz(~mask);
                parser->index += trailing_ones;
                return;
            }
            
            // All 16 characters were whitespace, move forward
            parser->index += 16;
        }
    }
    
    // Handle remaining bytes with scalar code
    while (parser->index < parser->length) {
        uint8_t c = parser->input[parser->index];
        if (c == ' ' || c == '\t' || c == '\n' || c == '\r') {
            parser->index++;
        } else {
            break;
        }
    }
#elif defined(__aarch64__) || defined(__arm64__)
    // NEON implementation for ARM64
    const size_t remaining = parser->length - parser->index;
    
    // Fast path for the common case - no or minimal whitespace
    // Check the first character directly before using SIMD
    if (remaining > 0) {
        uint8_t c = parser->input[parser->index];
        if (!(c == ' ' || c == '\t' || c == '\n' || c == '\r')) {
            return;  // No whitespace to skip
        }
        
        // Check the second character if available
        if (remaining > 1) {
            c = parser->input[parser->index + 1];
            if (!(c == ' ' || c == '\t' || c == '\n' || c == '\r')) {
                parser->index++;
                return;  // Just one whitespace character
            }
        }
    }
    
    // More than 1 whitespace, use SIMD for blocks
    if (remaining >= 16) {
        // Process 16 bytes at a time with NEON
        const uint8x16_t space = vdupq_n_u8(' ');
        const uint8x16_t tab = vdupq_n_u8('\t');
        const uint8x16_t newline = vdupq_n_u8('\n');
        const uint8x16_t carriage = vdupq_n_u8('\r');
        
        while (parser->index + 16 <= parser->length) {
            // Load 16 bytes from input
            uint8x16_t input = vld1q_u8(parser->input + parser->index);
            
            // Compare with whitespace characters
            uint8x16_t eq_space = vceqq_u8(input, space);
            uint8x16_t eq_tab = vceqq_u8(input, tab);
            uint8x16_t eq_newline = vceqq_u8(input, newline);
            uint8x16_t eq_cr = vceqq_u8(input, carriage);
            
            // Combine results with OR
            uint8x16_t is_whitespace = vorrq_u8(
                vorrq_u8(eq_space, eq_tab),
                vorrq_u8(eq_newline, eq_cr)
            );
            
            // Convert to bitmap - find first non-whitespace byte
            uint64x2_t not_white = vreinterpretq_u64_u8(vmvnq_u8(is_whitespace));
            uint64_t low_bits = vgetq_lane_u64(not_white, 0);
            uint64_t high_bits = vgetq_lane_u64(not_white, 1);
            
            // Fast check if all are whitespace (most common scenario in formatted JSON)
            if (low_bits == 0 && high_bits == 0) {
                parser->index += 16;
                continue;
            }
            
            // Find position of first non-whitespace
            if (low_bits != 0) {
                // Find first set bit in low 8 bytes
                unsigned long pos = __builtin_ctzll(low_bits) / 8;
                parser->index += pos;
                return;
            } else {
                // Find first set bit in high 8 bytes
                unsigned long pos = __builtin_ctzll(high_bits) / 8;
                parser->index += 8 + pos;
                return;
            }
        }
    }
    
    // Handle remaining bytes with scalar code
    while (parser->index < parser->length) {
        uint8_t c = parser->input[parser->index];
        if (c == ' ' || c == '\t' || c == '\n' || c == '\r') {
            parser->index++;
        } else {
            break;
        }
    }
#else
    // Fallback scalar implementation for other platforms
    while (parser->index < parser->length) {
        uint8_t c = parser->input[parser->index];
        if (c == ' ' || c == '\t' || c == '\n' || c == '\r') {
            parser->index++;
        } else {
            break;
        }
    }
#endif
}

// Parse BOM (Byte Order Mark)
static void json_parse_bom(json_parser_t* parser) {
    if (parser->length >= 3 && 
        parser->input[0] == 0xEF && 
        parser->input[1] == 0xBB && 
        parser->input[2] == 0xBF) {
        parser->index = 3;
    }
}

// Expect specific byte
static json_error_t json_expect(json_parser_t* parser, uint8_t expected) {
    if (!json_has_more(parser)) {
        return JSON_UNEXPECTED_END_OF_INPUT;
    }
    
    uint8_t c = json_next(parser);
    if (c != expected) {
        return JSON_INVALID_CHARACTER;
    }
    
    return JSON_NO_ERROR;
}

// Parse a hex digit
static json_error_t json_parse_hex(json_parser_t* parser, uint16_t* out_value) {
    if (!json_has_more(parser)) {
        return JSON_UNEXPECTED_END_OF_INPUT;
    }
    
    uint8_t c = json_next(parser);
    uint16_t value = 0;
    
    if (c >= '0' && c <= '9') {
        value = c - '0';
    } else if (c >= 'a' && c <= 'f') {
        value = 10 + (c - 'a');
    } else if (c >= 'A' && c <= 'F') {
        value = 10 + (c - 'A');
    } else {
        return JSON_INVALID_UNICODE;
    }
    
    *out_value = value;
    return JSON_NO_ERROR;
}

// Parse a 4-digit hex sequence for unicode
static json_error_t json_parse_hex_sequence(json_parser_t* parser, uint16_t* out_value) {
    uint16_t h1, h2, h3, h4;
    json_error_t err;
    
    if ((err = json_parse_hex(parser, &h1)) != JSON_NO_ERROR) return err;
    if ((err = json_parse_hex(parser, &h2)) != JSON_NO_ERROR) return err;
    if ((err = json_parse_hex(parser, &h3)) != JSON_NO_ERROR) return err;
    if ((err = json_parse_hex(parser, &h4)) != JSON_NO_ERROR) return err;
    
    *out_value = (h1 << 12) | (h2 << 8) | (h3 << 4) | h4;
    return JSON_NO_ERROR;
}

// Add a UTF-8 encoded codepoint to the string buffer
static json_error_t json_add_codepoint(json_parser_t* parser, uint32_t codepoint) {
    json_error_t err;
    
    if (codepoint <= 0x7F) {
        // 1-byte encoding
        err = json_temp_buffer_append_byte(parser, (char)codepoint);
    } else if (codepoint <= 0x7FF) {
        // 2-byte encoding
        err = json_temp_buffer_append_byte(parser, (char)(0xC0 | (codepoint >> 6)));
        if (err == JSON_NO_ERROR) {
            err = json_temp_buffer_append_byte(parser, (char)(0x80 | (codepoint & 0x3F)));
        }
    } else if (codepoint <= 0xFFFF) {
        // 3-byte encoding
        err = json_temp_buffer_append_byte(parser, (char)(0xE0 | (codepoint >> 12)));
        if (err == JSON_NO_ERROR) {
            err = json_temp_buffer_append_byte(parser, (char)(0x80 | ((codepoint >> 6) & 0x3F)));
        }
        if (err == JSON_NO_ERROR) {
            err = json_temp_buffer_append_byte(parser, (char)(0x80 | (codepoint & 0x3F)));
        }
    } else if (codepoint <= 0x10FFFF) {
        // 4-byte encoding
        err = json_temp_buffer_append_byte(parser, (char)(0xF0 | (codepoint >> 18)));
        if (err == JSON_NO_ERROR) {
            err = json_temp_buffer_append_byte(parser, (char)(0x80 | ((codepoint >> 12) & 0x3F)));
        }
        if (err == JSON_NO_ERROR) {
            err = json_temp_buffer_append_byte(parser, (char)(0x80 | ((codepoint >> 6) & 0x3F)));
        }
        if (err == JSON_NO_ERROR) {
            err = json_temp_buffer_append_byte(parser, (char)(0x80 | (codepoint & 0x3F)));
        }
    } else {
        return JSON_INVALID_UNICODE;
    }
    
    return err;
}

// Improved string parsing with fewer memory operations and direct small string optimization
static json_error_t json_parse_string(json_parser_t* parser, char** out_str, size_t* out_len) {
    json_error_t err;
    
    // Expect opening quote
    if ((err = json_expect(parser, '"')) != JSON_NO_ERROR) {
        return err;
    }
    
    // First, check if this might be a candidate for direct processing
    // by scanning for any escape character or control character
    size_t start_index = parser->index;
    bool has_escapes = false;
    size_t string_length = 0;
    size_t looking_index = start_index;
    
    // Quick scan for closing quote and escapes
    while (looking_index < parser->length) {
        uint8_t c = parser->input[looking_index++];
        if (c == '"') {
            // Found end of string without any escapes
            break;
        } 
        if (c == '\\' || c < 0x20) {
            // Has escapes or control characters
            has_escapes = true;
            break;
        }
        string_length++;
        
        // If we've exceeded small string size, we don't need to check further
        if (string_length > SMALL_STRING_SIZE) {
            break;
        }
    }
    
    // If the string is small, has no escapes, and we found its end
    if (!has_escapes && string_length <= SMALL_STRING_SIZE && 
        looking_index < parser->length && parser->input[looking_index-1] == '"') {
        // We can directly create a value with this string
        *out_str = (char*)malloc(string_length + 1);
        if (!*out_str) {
            return JSON_OUT_OF_MEMORY;
        }
        
        // Copy the string directly from the input
        if (string_length > 0) {
            memcpy(*out_str, parser->input + start_index, string_length);
        }
        (*out_str)[string_length] = '\0';
        *out_len = string_length;
        
        // Update parser position
        parser->index = looking_index; // This skips past the closing quote
        return JSON_NO_ERROR;
    }
    
    // Fallback to parsing with escapes for complex strings
    // Reset position to the start (after quote) since we'll parse again
    parser->index = start_index;
    
    // Clear temp buffer for use
    json_temp_buffer_clear(parser);
    
    // Parse the string with escapes
    bool escape_mode = false;
    
    while (json_has_more(parser)) {
        uint8_t c = json_next(parser);
        
        if (escape_mode) {
            escape_mode = false;
            
            switch (c) {
                case '"':
                case '\\':
                case '/':
                    err = json_temp_buffer_append_byte(parser, c);
                    break;
                case 'b':
                    err = json_temp_buffer_append_byte(parser, '\b');
                    break;
                case 'f':
                    err = json_temp_buffer_append_byte(parser, '\f');
                    break;
                case 'n':
                    err = json_temp_buffer_append_byte(parser, '\n');
                    break;
                case 'r':
                    err = json_temp_buffer_append_byte(parser, '\r');
                    break;
                case 't':
                    err = json_temp_buffer_append_byte(parser, '\t');
                    break;
                case 'u': {
                    // Unicode escape
                    uint16_t code_unit;
                    
                    // Parse the hex sequence
                    err = json_parse_hex_sequence(parser, &code_unit);
                    if (err != JSON_NO_ERROR) {
                        return err;
                    }
                    
                    // Check for surrogate pairs
                    if (code_unit >= 0xD800 && code_unit <= 0xDBFF) {
                        // High surrogate, should be followed by low surrogate
                        if (!json_has_more(parser) || json_next(parser) != '\\') {
                            return JSON_INVALID_UNICODE;
                        }
                        
                        if (!json_has_more(parser) || json_next(parser) != 'u') {
                            return JSON_INVALID_UNICODE;
                        }
                        
                        uint16_t low_surrogate;
                        err = json_parse_hex_sequence(parser, &low_surrogate);
                        if (err != JSON_NO_ERROR) {
                            return err;
                        }
                        
                        if (low_surrogate < 0xDC00 || low_surrogate > 0xDFFF) {
                            return JSON_INVALID_UNICODE;
                        }
                        
                        // Calculate the full codepoint from the surrogate pair
                        uint32_t codepoint = 0x10000;
                        codepoint += (code_unit & 0x3FF) << 10;
                        codepoint += (low_surrogate & 0x3FF);
                        
                        // Add the codepoint to the string
                        err = json_add_codepoint(parser, codepoint);
                    } else {
                        // Add single code unit
                        err = json_add_codepoint(parser, code_unit);
                    }
                    break;
                }
                default:
                    return JSON_INVALID_ESCAPE;
            }
            
            if (err != JSON_NO_ERROR) {
                return err;
            }
        } else if (c == '"') {
            // End of string - we're done
            break;
        } else if (c == '\\') {
            // Start of escape sequence
            escape_mode = true;
        } else if (c < 0x20) {
            // Control characters aren't allowed
            return JSON_INVALID_STRING;
        } else {
            // Regular character
            err = json_temp_buffer_append_byte(parser, c);
            if (err != JSON_NO_ERROR) {
                return err;
            }
        }
    }
    
    // Allocate the string and copy the content
    *out_str = (char*)malloc(parser->temp_size + 1);
    if (!*out_str) {
        return JSON_OUT_OF_MEMORY;
    }
    
    if (parser->temp_size > 0) {
        memcpy(*out_str, parser->temp_buffer, parser->temp_size);
    }
    (*out_str)[parser->temp_size] = '\0';
    *out_len = parser->temp_size;
    
    return JSON_NO_ERROR;
}

// Optimized function for creating string JSON values
static json_value_t* json_create_string_direct(json_memory_arena_t* arena, const uint8_t* str_data, size_t len) {
    json_value_t* value = json_create_value_from_arena(arena);
    if (!value) return NULL;
    
    value->type = JSON_STRING;
    value->data.string.length = len;
    
    // Use small string optimization for strings that fit
    if (len <= SMALL_STRING_SIZE) {
        value->data.string.is_small = true;
        if (str_data && len > 0) {
            memcpy(value->data.string.data.buf, str_data, len);
        }
        value->data.string.data.buf[len] = '\0';
    } else {
        // Use arena allocation for larger strings
        value->data.string.is_small = false;
        
        // Allocate space for the string + null terminator from the arena
        value->data.string.data.ptr = (char*)json_arena_alloc(arena, len + 1);
        if (!value->data.string.data.ptr) {
            return NULL; // Arena allocation failed
        }
        
        if (str_data && len > 0) {
            memcpy(value->data.string.data.ptr, str_data, len);
        }
        value->data.string.data.ptr[len] = '\0';
    }
    
    return value;
}

// Optimized number parsing with fast paths for common cases
static json_error_t json_parse_number(json_parser_t* parser, json_value_t** out_value) {
    // Local variables needed for parsing
    bool is_negative = false;
    const size_t start_index = parser->index;
    
    // Fast check for negative sign
    if (json_peek(parser) == '-') {
        is_negative = true;
        json_next(parser);
    }
    
    // Handle leading zero or first digit
    if (!json_has_more(parser)) {
        return JSON_INVALID_NUMBER;
    }
    
    uint8_t first_digit = json_peek(parser);
    if (first_digit == '0') {
        // Leading zero must be followed by '.' or 'e'/'E' or end
        json_next(parser);
        
        if (json_has_more(parser) && isdigit(json_peek(parser))) {
            // Leading zeros are not allowed (except single 0)
            return JSON_INVALID_NUMBER;
        }
    } else if (first_digit >= '1' && first_digit <= '9') {
        // Valid first digit, continue parsing
        json_next(parser);
    } else {
        // Not a digit
        return JSON_INVALID_NUMBER;
    }
    
    // Fast path for simple integers (very common in JSON)
    // If we see only digits up to a structural character or whitespace, parse as int
    if (first_digit >= '0' && first_digit <= '9') {
        int64_t integer_value = first_digit - '0';
        
        // Count digits to detect overflow early (max 19 digits for int64)
        int digit_count = 1;
        bool is_simple_integer = true;
        
        // Parse digits until non-digit
        while (json_has_more(parser) && isdigit(json_peek(parser))) {
            uint8_t digit = json_next(parser) - '0';
            digit_count++;
            
            // Check for overflow - if more than 19 digits, it will overflow int64
            if (digit_count > 19) {
                is_simple_integer = false;
                break;
            }
            
            // Multiply by 10 and add digit, checking for overflow
            if (integer_value > (INT64_MAX - digit) / 10) {
                is_simple_integer = false;
                break;
            }
            
            integer_value = integer_value * 10 + digit;
        }
        
        // If next char is not '.', 'e', or 'E', we have a simple integer
        if (is_simple_integer && 
            (!json_has_more(parser) || 
             (json_peek(parser) != '.' && json_peek(parser) != 'e' && json_peek(parser) != 'E'))) {
            // Create integer value directly
            *out_value = json_create_int(parser->arena, is_negative ? -integer_value : integer_value);
            return *out_value ? JSON_NO_ERROR : JSON_OUT_OF_MEMORY;
        }
        
        // If we reached here, it's either a floating point or a complex integer
        // Reset position to after the sign and first digit
        parser->index = start_index + (is_negative ? 1 : 0) + 1;
    }
    
    // If we get here, we need to handle the general case (floating point or large integer)
    // Parse the integer part
    int64_t integer_part = 0;
    if (first_digit >= '0' && first_digit <= '9') {
        integer_part = first_digit - '0';
        
        while (json_has_more(parser) && isdigit(json_peek(parser))) {
            uint8_t digit = json_peek(parser) - '0';
            
            // Check for overflow, but don't break parsing - switch to double
            if (integer_part > (INT64_MAX - digit) / 10) {
                // Will use double for the result, but still need to consume all digits
                json_next(parser);
                while (json_has_more(parser) && isdigit(json_peek(parser))) {
                    json_next(parser);
                }
                break;
            }
            
            integer_part = integer_part * 10 + digit;
            json_next(parser);
        }
    }
    
    // We've parsed the integer part now check for fractional part or exponent
    double result_value = (double)integer_part;
    bool has_fractional_part = false;
    bool has_exponent = false;
    
    // Parse fractional part if present
    if (json_has_more(parser) && json_peek(parser) == '.') {
        json_next(parser); // consume '.'
        has_fractional_part = true;
        
        if (!json_has_more(parser) || !isdigit(json_peek(parser))) {
            return JSON_INVALID_NUMBER;
        }
        
        // More efficient fractional parsing
        double fraction = 0.0;
        double divisor = 1.0;
        
        while (json_has_more(parser) && isdigit(json_peek(parser))) {
            uint8_t digit = json_next(parser) - '0';
            divisor *= 10.0;
            fraction += digit / divisor;
        }
        
        result_value += fraction;
    }
    
    // Parse exponent if present
    if (json_has_more(parser) && (json_peek(parser) == 'e' || json_peek(parser) == 'E')) {
        json_next(parser); // consume 'e' or 'E'
        has_exponent = true;
        
        bool exp_negative = false;
        if (json_has_more(parser) && (json_peek(parser) == '+' || json_peek(parser) == '-')) {
            exp_negative = (json_next(parser) == '-');
        }
        
        if (!json_has_more(parser) || !isdigit(json_peek(parser))) {
            return JSON_INVALID_NUMBER;
        }
        
        int exp_value = 0;
        while (json_has_more(parser) && isdigit(json_peek(parser))) {
            uint8_t digit = json_next(parser) - '0';
            
            // Limit exponent to reasonable values to prevent excessive computation
            if (exp_value <= 308) {
                exp_value = exp_value * 10 + digit;
            }
        }
        
        // Apply exponent directly
        if (exp_value > 0) {
            double scale = 1.0;
            int remaining_exp = exp_value;
            
            // Use squaring for faster exponentiation
            double base = 10.0;
            while (remaining_exp > 0) {
                if (remaining_exp & 1) {
                    scale *= base;
                }
                base *= base;
                remaining_exp >>= 1;
            }
            
            if (exp_negative) {
                result_value /= scale;
            } else {
                result_value *= scale;
            }
        }
    }
    
    // Create the appropriate value
    if (has_fractional_part || has_exponent || integer_part > INT64_MAX / 10) {
        // Use double for any non-integer value or large integers
        *out_value = json_create_double(parser->arena, is_negative ? -result_value : result_value);
    } else {
        // Use integer for whole numbers that fit in int64_t
        *out_value = json_create_int(parser->arena, is_negative ? -(int64_t)result_value : (int64_t)result_value);
    }
    
    return *out_value ? JSON_NO_ERROR : JSON_OUT_OF_MEMORY;
}

// Forward declaration
static json_error_t json_parse_value(json_parser_t* parser, json_value_t** out_value);

// Parse an array
static json_error_t json_parse_array(json_parser_t* parser, json_value_t** out_value) {
    // Expect opening bracket
    json_error_t err = json_expect(parser, '[');
    if (err != JSON_NO_ERROR) {
        return err;
    }
    
    // Create array value
    json_value_t* array = json_create_array(parser->arena);
    if (!array) {
        return JSON_OUT_OF_MEMORY;
    }
    
    // Skip whitespace
    json_consume_whitespace(parser);
    
    // Handle empty array
    if (json_has_more(parser) && json_peek(parser) == ']') {
        json_next(parser);
        *out_value = array;
        return JSON_NO_ERROR;
    }
    
    // Parse array elements
    while (1) {
        // Parse element value
        json_value_t* element = NULL;
        err = json_parse_value(parser, &element);
        if (err != JSON_NO_ERROR) {
            // Don't need to free array, will be done when arena is cleaned up
            return err;
        }
        
        // Add to array
        err = json_array_push(array, element, parser->arena);
        if (err != JSON_NO_ERROR) {
            // Don't need to free separately, covered by arena cleanup
            return err;
        }
        
        // Skip whitespace
        json_consume_whitespace(parser);
        
        // Check for array end or next element
        if (!json_has_more(parser)) {
            return JSON_UNEXPECTED_END_OF_INPUT;
        }
        
        uint8_t c = json_next(parser);
        if (c == ']') {
            // End of array
            break;
        } else if (c == ',') {
            // Skip whitespace before next element
            json_consume_whitespace(parser);
            continue;
        } else {
            // Unexpected character
            return JSON_EXPECTED_COMMA_OR_BRACKET;
        }
    }
    
    *out_value = array;
    return JSON_NO_ERROR;
}

// Parse an object
static json_error_t json_parse_object(json_parser_t* parser, json_value_t** out_value) {
    // Expect opening brace
    json_error_t err = json_expect(parser, '{');
    if (err != JSON_NO_ERROR) {
        return err;
    }
    
    // Create object value
    json_value_t* object = json_create_object(parser->arena);
    if (!object) {
        return JSON_OUT_OF_MEMORY;
    }
    
    // Skip whitespace
    json_consume_whitespace(parser);
    
    // Handle empty object
    if (json_has_more(parser) && json_peek(parser) == '}') {
        json_next(parser);
        *out_value = object;
        return JSON_NO_ERROR;
    }
    
    // Parse object members (key-value pairs)
    while (1) {
        // Parse key
        char* key = NULL;
        size_t key_len = 0;
        err = json_parse_string(parser, &key, &key_len);
        if (err != JSON_NO_ERROR) {
            // Object will be cleaned up with arena
            return err;
        }
        
        // Skip whitespace
        json_consume_whitespace(parser);
        
        // Expect colon separator
        if (!json_has_more(parser) || json_next(parser) != ':') {
            free(key);
            return JSON_EXPECTED_COLON;
        }
        
        // Skip whitespace
        json_consume_whitespace(parser);
        
        // Parse value
        json_value_t* value = NULL;
        err = json_parse_value(parser, &value);
        if (err != JSON_NO_ERROR) {
            free(key);
            return err;
        }
        
        // Add to object
        err = json_object_set(object, key, key_len, value, parser->arena);
        free(key);  // json_object_set makes its own copy
        if (err != JSON_NO_ERROR) {
            // Object and value will be cleaned up with arena
            return err;
        }
        
        // Skip whitespace
        json_consume_whitespace(parser);
        
        // Check for object end or next pair
        if (!json_has_more(parser)) {
            return JSON_UNEXPECTED_END_OF_INPUT;
        }
        
        uint8_t c = json_next(parser);
        if (c == '}') {
            // End of object
            break;
        } else if (c == ',') {
            // Skip whitespace before next pair
            json_consume_whitespace(parser);
            continue;
        } else {
            // Unexpected character
            return JSON_EXPECTED_COMMA_OR_BRACE;
        }
    }
    
    *out_value = object;
    return JSON_NO_ERROR;
}

// Parse a true literal
static json_error_t json_parse_true(json_parser_t* parser, json_value_t** out_value) {
    // Fast path using memcmp
    if (parser->length - parser->index >= 4 && 
        memcmp(parser->input + parser->index, "true", 4) == 0) {
        parser->index += 4;
        *out_value = json_create_boolean(parser->arena, true);
        return *out_value ? JSON_NO_ERROR : JSON_OUT_OF_MEMORY;
    }
    
    // Fallback to byte-by-byte parsing
    if (!json_has_more(parser) || json_next(parser) != 't') {
        return JSON_INVALID_LITERAL;
    }
    
    if (!json_has_more(parser) || json_next(parser) != 'r') {
        return JSON_INVALID_LITERAL;
    }
    
    if (!json_has_more(parser) || json_next(parser) != 'u') {
        return JSON_INVALID_LITERAL;
    }
    
    if (!json_has_more(parser) || json_next(parser) != 'e') {
        return JSON_INVALID_LITERAL;
    }
    
    *out_value = json_create_boolean(parser->arena, true);
    return *out_value ? JSON_NO_ERROR : JSON_OUT_OF_MEMORY;
}

// Parse a false literal
static json_error_t json_parse_false(json_parser_t* parser, json_value_t** out_value) {
    // Fast path using memcmp
    if (parser->length - parser->index >= 5 && 
        memcmp(parser->input + parser->index, "false", 5) == 0) {
        parser->index += 5;
        *out_value = json_create_boolean(parser->arena, false);
        return *out_value ? JSON_NO_ERROR : JSON_OUT_OF_MEMORY;
    }
    
    // Fallback to byte-by-byte parsing
    if (!json_has_more(parser) || json_next(parser) != 'f') {
        return JSON_INVALID_LITERAL;
    }
    
    if (!json_has_more(parser) || json_next(parser) != 'a') {
        return JSON_INVALID_LITERAL;
    }
    
    if (!json_has_more(parser) || json_next(parser) != 'l') {
        return JSON_INVALID_LITERAL;
    }
    
    if (!json_has_more(parser) || json_next(parser) != 's') {
        return JSON_INVALID_LITERAL;
    }
    
    if (!json_has_more(parser) || json_next(parser) != 'e') {
        return JSON_INVALID_LITERAL;
    }
    
    *out_value = json_create_boolean(parser->arena, false);
    return *out_value ? JSON_NO_ERROR : JSON_OUT_OF_MEMORY;
}

// Parse a null literal
static json_error_t json_parse_null(json_parser_t* parser, json_value_t** out_value) {
    // Fast path using memcmp
    if (parser->length - parser->index >= 4 && 
        memcmp(parser->input + parser->index, "null", 4) == 0) {
        parser->index += 4;
        *out_value = json_create_null(parser->arena);
        return *out_value ? JSON_NO_ERROR : JSON_OUT_OF_MEMORY;
    }
    
    // Fallback to byte-by-byte parsing
    if (!json_has_more(parser) || json_next(parser) != 'n') {
        return JSON_INVALID_LITERAL;
    }
    
    if (!json_has_more(parser) || json_next(parser) != 'u') {
        return JSON_INVALID_LITERAL;
    }
    
    if (!json_has_more(parser) || json_next(parser) != 'l') {
        return JSON_INVALID_LITERAL;
    }
    
    if (!json_has_more(parser) || json_next(parser) != 'l') {
        return JSON_INVALID_LITERAL;
    }
    
    *out_value = json_create_null(parser->arena);
    return *out_value ? JSON_NO_ERROR : JSON_OUT_OF_MEMORY;
}

// Parse any JSON value based on the first character
static json_error_t json_parse_value(json_parser_t* parser, json_value_t** out_value) {
    json_consume_whitespace(parser);
    
    if (!json_has_more(parser)) {
        return JSON_UNEXPECTED_END_OF_INPUT;
    }
    
    uint8_t c = json_peek(parser);
    
    switch (c) {
        case '"': {
            // Check if this might be a simple string we can parse directly into the value
            // without intermediate allocation
            size_t start_index = parser->index + 1; // Skip the opening quote
            bool has_escapes = false;
            size_t string_length = 0;
            size_t looking_index = start_index;
            
            // Quick scan for closing quote and escapes
            while (looking_index < parser->length) {
                uint8_t sc = parser->input[looking_index++];
                if (sc == '"') {
                    // Found end of string without any escapes
                    break;
                } 
                if (sc == '\\' || sc < 0x20) {
                    // Has escapes or control characters
                    has_escapes = true;
                    break;
                }
                string_length++;
                
                // If we've exceeded small string size, no need to optimize further
                if (string_length > SMALL_STRING_SIZE) {
                    break;
                }
            }
            
            // If the string is small, has no escapes, and we found its end
            if (!has_escapes && string_length <= SMALL_STRING_SIZE && 
                looking_index < parser->length && parser->input[looking_index-1] == '"') {
                // We can directly create a value with this string
                json_value_t* value = json_create_string_direct(parser->arena, parser->input + start_index, string_length);
                if (!value) {
                    return JSON_OUT_OF_MEMORY;
                }
                
                // Update parser position
                parser->index = looking_index; // This skips past the closing quote
                *out_value = value;
                return JSON_NO_ERROR;
            }
            
            // Fallback to standard parsing for complex strings
            char* str = NULL;
            size_t str_len = 0;
            json_error_t err = json_parse_string(parser, &str, &str_len);
            if (err != JSON_NO_ERROR) {
                return err;
            }
            
            *out_value = json_create_string(parser->arena, str, str_len);
            free(str);
            
            return *out_value ? JSON_NO_ERROR : JSON_OUT_OF_MEMORY;
        }
        
        case '{':
            return json_parse_object(parser, out_value);
            
        case '[':
            return json_parse_array(parser, out_value);
            
        case 't':
            return json_parse_true(parser, out_value);
            
        case 'f':
            return json_parse_false(parser, out_value);
            
        case 'n':
            return json_parse_null(parser, out_value);
            
        case '-':
        case '0':
        case '1':
        case '2':
        case '3':
        case '4':
        case '5':
        case '6':
        case '7':
        case '8':
        case '9':
            return json_parse_number(parser, out_value);
            
        default:
            return JSON_INVALID_CHARACTER;
    }
}


/// Parse JSON data from a byte array
/// - Parameters:
///   - data: A pointer to the data buffer containing the JSON string.
///   - length: The length of the data buffer.
///   - out_value: A pointer to a pointer where the parsed JSON value will be stored.
json_error_t json_parse(const uint8_t* data, size_t length, json_value_t** out_value) {
    if (!data || !out_value) {
        return JSON_INVALID_JSON;
    }
    
    *out_value = NULL;
    
    json_parser_t parser;
    json_parser_init(&parser, data, length);
    
    // Check if arena initialization failed
    if (!parser.arena) {
        json_parser_cleanup(&parser);
        return JSON_OUT_OF_MEMORY;
    }
    
    // Handle BOM
    json_parse_bom(&parser);
    
    // Parse the root value
    json_error_t err = json_parse_value(&parser, out_value);
    
    // Skip trailing whitespace
    json_consume_whitespace(&parser);
    
    // Ensure we consumed all input
    if (err == JSON_NO_ERROR && parser.index < parser.length) {
        *out_value = NULL;
        err = JSON_INVALID_JSON;
    }
    
    // Free the parser's temporary buffer
    free(parser.temp_buffer);
    parser.temp_buffer = NULL;
    
    if (err != JSON_NO_ERROR) {
        // On failure, clean up the arena which will free all allocated memory
        json_arena_free(parser.arena);
        parser.arena = NULL;
        *out_value = NULL;
    }
    // We keep the arena live until manual cleanup with json_free_value_and_arena
    
    return err;
}
