// Jaybird
// Serializer.swift
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

extension JSON {

    public enum Serializer {

        public struct Options: OptionSet, Equatable, Hashable, Sendable {

            public init(rawValue: Int) {
                self.rawValue = rawValue
            }

            public let rawValue: Int

            public static let prettyPrinted = Options(rawValue: 1 << 0)

            public static let omitNullKeys = Options(rawValue: 1 << 1)

            public static let sortedKeys = Options(rawValue: 1 << 2)

            public static let allowFragments = Options(rawValue: 1 << 3)

            public static let includeByteOrderMark = Options(rawValue: 1 << 4)

            public static let `default`: Options = [.sortedKeys, .allowFragments]

        }

        public static func string(
            from json: JSON,
            options: Options = .default
        ) throws -> String {
            let data = try data(from: json, options: options)
            guard let str = String(data: data, encoding: .utf8) else {
                throw SerializationError.utf8conversionFailure
            }
            return str
        }

        public static func data(
            from json: JSON,
            options: Options = .default,
        ) throws -> Data {
            var bytes = [UInt8]()
            if !options.contains(.allowFragments) {
                switch json {
                case .literal, .numeric, .string:
                    throw SerializationError.invalidFragment
                case .array, .object:
                    break
                }
            }
            if options.contains(.includeByteOrderMark) {
                serializeBOM(into: &bytes)
            }
            try serialize(json: json, into: &bytes, level: options.contains(.prettyPrinted) ? 0 : nil, options: options)
            return Data(bytes)
        }

        static func serializeBOM(into bytes: inout [UInt8]) {
            bytes += [0xEF, 0xBB, 0xBF]
        }

        static func serialize(
            json: JSON,
            into bytes: inout [UInt8],
            level: Int?,
            options: Options
        ) throws {
            switch json {
            case let .literal(literal):
                serialize(literal: literal, into: &bytes)
            case let .object(object):
                try serialize(object: object, into: &bytes, level: level, options: options)
            case let .array(array):
                try serialize(array: array, into: &bytes, level: level, options: options)
            case let .numeric(numeric):
                try serialize(numeric: numeric, into: &bytes)
            case let .string(string):
                serialize(string: string, into: &bytes)
            }
        }

        static func serialize(
            literal: Literal,
            into bytes: inout [UInt8]
        ) {
            switch literal {
            case .true:
                bytes += [0x74, 0x72, 0x75, 0x65]
            case .false:
                bytes += [0x66, 0x61, 0x6C, 0x73, 0x65]
            case .null:
                bytes += [0x6E, 0x75, 0x6C, 0x6C]
            }
        }

        static func serialize(
            numeric: Numeric,
            into bytes: inout [UInt8]
        ) throws {
            switch numeric {
            case let .int(value):
                serialize(integer: value, into: &bytes)
            case let .double(value):
                try serialize(double: value, into: &bytes)
            }
        }

        static func serialize(
            integer: Int,
            into bytes: inout [UInt8]
        ) {
            let str = String(integer)
            bytes += Array(str.utf8)
        }

        static func serialize(
            double: Double,
            into bytes: inout [UInt8]
        ) throws {
            guard double == double,
                  double != .infinity,
                  double != -.infinity else {
                throw SerializationError.invalidFloat
            }
            let absValue = abs(double)
            if absValue != 0, (absValue >= 1e7 || absValue < 1e-6) {
                let formatter = NumberFormatter()
                formatter.locale = Locale(identifier: "en_US_POSIX")
                formatter.numberStyle = .scientific
                formatter.positiveFormat = "0.################E+0"
                formatter.negativeFormat = "-0.################E+0"
                let str = formatter.string(from: NSNumber(value: double))!
                bytes += str.utf8
            } else {
                bytes += String(double).utf8
            }
        }

        static func serialize(
            string: String,
            into bytes: inout [UInt8]
        ) {
            bytes.append(UInt8(ascii: "\""))
            for scalar in string.unicodeScalars {
                switch scalar.value {
                case 0x00...0x1F:
                    let hex = String(format: "\\u%04X", scalar.value)
                    bytes.append(contentsOf: hex.utf8)
                case 0x22:
                    bytes.append(contentsOf: "\\\"".utf8)
                case 0x5C:
                    bytes.append(contentsOf: "\\\\".utf8)
                case 0x08:
                    bytes.append(contentsOf: "\\b".utf8)
                case 0x0C:
                    bytes.append(contentsOf: "\\f".utf8)
                case 0x0A:
                    bytes.append(contentsOf: "\\n".utf8)
                case 0x0D:
                    bytes.append(contentsOf: "\\r".utf8)
                case 0x09:
                    bytes.append(contentsOf: "\\t".utf8)
                case 0x20...0x7F:
                    bytes.append(UInt8(scalar.value))
                case 0x80...0xFFFF:
                    bytes.append(contentsOf: String(scalar).utf8)
                default:
                    let codepoint = scalar.value - 0x10000
                    let high = 0xD800 + (codepoint >> 10)
                    let low = 0xDC00 + (codepoint & 0x3FF)
                    bytes.append(contentsOf: String(format: "\\u%04X\\u%04X", high, low).utf8)
                }
            }

            bytes.append(UInt8(ascii: "\""))
        }

        static func serialize(
            array: [JSON],
            into bytes: inout [UInt8],
            level: Int?,
            options: Options
        ) throws {
            bytes += [0x5B]

            if array.isEmpty {
                bytes += [0x5D]
                return
            }

            if level != nil {
                bytes += [0x0A] // Newline
            }

            for value in array.dropLast() {
                if let level {
                    addIndentation(level: level + 1, into: &bytes)
                    try serialize(json: value, into: &bytes, level: level + 1, options: options)
                    bytes += [0x2C, 0x0A]
                } else {
                    try serialize(json: value, into: &bytes, level: level, options: options)
                    bytes += [0x2C]
                }

            }

            if let lastValue = array.last {
                if let level {
                    addIndentation(level: level + 1, into: &bytes)
                    try serialize(json: lastValue, into: &bytes, level: level + 1, options: options)
                    bytes += [0x0A]
                } else {
                    try serialize(json: lastValue, into: &bytes, level: 1, options: options)
                }
            }

            if let level {
                addIndentation(level: level, into: &bytes)
            }

            bytes += [0x5D]
        }

        static func serialize(
            object: [String: JSON],
            into bytes: inout [UInt8],
            level: Int?,
            options: Options
        ) throws {
            bytes += [0x7B]

            if object.isEmpty {
                bytes += [0x7D]
                return
            }

            if level != nil {
                bytes += [0x0A] // Newline
            }

            let keys = options.contains(.sortedKeys) ? Array(object.keys.sorted()) : Array(object.keys)
            for key in keys.dropLast() {
                let value = object[key].unsafelyUnwrapped
                if value != .null || !options.contains(.omitNullKeys) {
                    if let level {
                        addIndentation(level: level + 1, into: &bytes)
                        serialize(string: key, into: &bytes)
                        bytes += [0x3A, 0x20]
                        try serialize(json: value, into: &bytes, level: level + 1, options: options)
                        bytes += [0x2C, 0x0A]
                    } else {
                        serialize(string: key, into: &bytes)
                        bytes += [0x3A]
                        try serialize(json: value, into: &bytes, level: level, options: options)
                        bytes += [0x2C]
                    }
                }
            }

            if let key = keys.last {
                let value = object[key].unsafelyUnwrapped
                if value != .null || !options.contains(.omitNullKeys) {
                    if let level {
                        addIndentation(level: level + 1, into: &bytes)
                        serialize(string: key, into: &bytes)
                        bytes += [0x3A, 0x20]
                        try serialize(json: value, into: &bytes, level: level + 1, options: options)
                        bytes += [0x0A]
                    } else {
                        serialize(string: key, into: &bytes)
                        bytes += [0x3A]
                        try serialize(json: value, into: &bytes, level: level, options: options)
                    }
                }
            }

            if let level {
                addIndentation(level: level, into: &bytes)
            }

            bytes += [0x7D]
        }

        private static func addIndentation(
            level: Int,
            into bytes: inout [UInt8]
        ) {
            for _ in 0..<(level * 2) {
                bytes += [0x20]
            }
        }
    }

    public enum SerializationError: Error {

        case invalidFloat
        case utf8conversionFailure
        case invalidFragment

    }

}
