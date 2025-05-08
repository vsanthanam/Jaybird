// Jaybird
// Deserializer.swift
//
// MIT License
//
// Copyright (c) 2025 Varun Santhanam
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the  Software), to deal
//
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED  AS IS, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.

import Foundation
import JaybirdC

@available(macOS 13.0, macCatalyst 16.0, iOS 16.0, watchOS 9.0, tvOS 16.0, visionOS 1.0, *)
extension JSON {

    public enum Deserializer {

        public static func object(
            from string: String
        ) throws -> JSON {
            guard let data = string.data(using: .utf8) else {
                throw ParseError("Failed to convert string to data")
            }
            return try object(from: data)
        }

        public static func object(
            from data: Data
        ) throws -> JSON {
            var jsonValue: OpaquePointer?
            let result = data.withUnsafeBytes { buffer in
                json_parse(buffer.baseAddress?.assumingMemoryBound(to: UInt8.self), buffer.count, &jsonValue)
            }

            guard result == JSON_NO_ERROR else {
                throw ParseError("JSON parsing error: \(String(cString: json_get_error_message(result)))")
            }

            guard let jsonValue else {
                throw ParseError("Failed to parse JSON: null result")
            }

            func convertToJSON(
                _ value: OpaquePointer
            ) throws -> JSON {
                let type = json_get_type(value)

                switch type {
                case JSON_NULL:
                    return .literal(.null)

                case JSON_BOOLEAN:
                    return .literal(json_get_boolean(value) ? .true : .false)

                case JSON_NUMBER_INT:
                    return .numeric(.int(Int(json_get_int(value))))

                case JSON_NUMBER_DOUBLE:
                    return .numeric(.double(json_get_double(value)))

                case JSON_STRING:
                    let str = String(cString: json_get_string(value))
                    return .string(str)

                case JSON_ARRAY:
                    let count = json_get_array_size(value)
                    var array = Array()
                    array.reserveCapacity(count)

                    for i in 0..<count {
                        if let element = json_get_array_element(value, i) {
                            try array.append(convertToJSON(element))
                        }
                    }

                    return .array(array)

                case JSON_OBJECT:
                    let count = json_get_object_size(value)
                    var dict = Object()
                    dict.reserveCapacity(count)

                    for i in 0..<count {
                        let key = String(cString: json_get_object_key(value, i))
                        if let objValue = json_get_object_value(value, i) {
                            dict[key] = try convertToJSON(objValue)
                        }
                    }

                    return .object(dict)

                default:
                    throw ParseError("Unknown JSON type")
                }
            }

            let json = try convertToJSON(jsonValue)

            json_free(jsonValue)

            return json
        }

    }

}

@available(macOS 13.0, macCatalyst 16.0, iOS 16.0, watchOS 9.0, tvOS 16.0, visionOS 1.0, *)
private struct ParseError: Error, CustomStringConvertible {
    init(_ message: String) {
        self.message = message
    }

    var description: String {
        message
    }

    let message: String
}
