//
//  Parser.h
//  Jaybird
//
//  Created by Varun Santhanam on 4/29/25.
//

#ifndef Parser_h
#define Parser_h

#include <stdio.h>
#include <stdbool.h>
#include <stdlib.h>
#include <stdint.h>

// Error codes
typedef enum {
    JSON_NO_ERROR = 0,
    JSON_UNEXPECTED_END_OF_INPUT,
    JSON_INVALID_JSON,
    JSON_INVALID_CHARACTER,
    JSON_EXPECTED_COLON,
    JSON_EXPECTED_COMMA_OR_BRACE,
    JSON_EXPECTED_COMMA_OR_BRACKET,
    JSON_INVALID_LITERAL,
    JSON_INVALID_NUMBER,
    JSON_INVALID_STRING,
    JSON_MISSING_OBJECT_KEY,
    JSON_INVALID_UNICODE,
    JSON_INVALID_ESCAPE,
    JSON_OUT_OF_MEMORY
} json_error_t;

// JSON value types
typedef enum {
    JSON_NULL,
    JSON_BOOLEAN,
    JSON_NUMBER_INT,
    JSON_NUMBER_DOUBLE,
    JSON_STRING,
    JSON_ARRAY,
    JSON_OBJECT
} json_type_t;

/// A JSON Vaue
typedef struct json_value json_value_t;


/// Get a user-facing message from a parse error
/// - Parameter error: The error
const char* json_get_error_message(json_error_t error);

/// Parse byte buffer into a JSON value
/// - Parameters:
///   - data: byte buffer containing JSON data
///   - length: byte buffer length
///   - out_value: destination
json_error_t json_parse(const uint8_t* data, size_t length, json_value_t** out_value);


/// <#Description#>
/// - Parameter value: <#value description#>
void json_free(json_value_t* value);

json_type_t json_get_type(const json_value_t* value);

bool json_get_boolean(const json_value_t* value);

int64_t json_get_int(const json_value_t* value);
double json_get_double(const json_value_t* value);
const char* json_get_string(const json_value_t* value);
size_t json_get_string_length(const json_value_t* value);

// Array operations
size_t json_get_array_size(const json_value_t* array);
json_value_t* json_get_array_element(const json_value_t* array, size_t index);

// Object operations
size_t json_get_object_size(const json_value_t* object);
const char* json_get_object_key(const json_value_t* object, size_t index);
json_value_t* json_get_object_value(const json_value_t* object, size_t index);
json_value_t* json_get_object_value_by_key(const json_value_t* object, const char* key);

#endif /* Parser_h */
