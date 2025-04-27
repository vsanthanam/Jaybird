// Jaybird
// JSON.swift
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

public enum JSON: Equatable, Hashable, Sendable, ExpressibleByBooleanLiteral, ExpressibleByIntegerLiteral, ExpressibleByFloatLiteral, ExpressibleByStringLiteral, ExpressibleByArrayLiteral, ExpressibleByDictionaryLiteral, ExpressibleByNilLiteral {

    // MARK: - Initializers
    
    /// Create a `JSON` value from a ``JSONEncodable`` type
    /// - Parameter encodable: The encodable type to convert to JSON
    public init(
        _ encodable: some JSONEncodable
    ) {
        self = encodable.encodeToJSON()
    }
    
    /// Create a `JSON` value by deserializing a byte buffer containing UTF-8 encoded JSON string
    /// - Parameter data: The byte buffer to deserialize
    public init(
        _ data: Data
    ) throws {
        self = try Parser.parse(data)
    }
    
    /// Create a `JSON` value by deserializing a Swift string
    /// - Parameter string: The string to deserialize
    public init(
        deserializing string: String
    ) throws {
        guard let data = string.data(using: .utf8) else {
            throw JSONError.invalidJSON
        }
        try self.init(data)
    }
    
    /// Create a `JSON` value by deserializing an array of bytes that represent a UTF-8 encoded JSON string
    /// - Parameter bytes: The bytes to deserialize
    public init(
        _ bytes: [UInt8]
    ) throws {
        try self.init(Data(bytes))
    }
    
    // MARK: - API

    /// A JSON literal value
    case literal(Literal)

    /// A JSON object
    case object([String: JSON])

    /// A JSON array
    case array([JSON])

    /// A JSON numeric value
    case numeric(Numeric)

    /// A JSON string
    case string(String)

    /// A null JSON value
    public static let null: JSON = .literal(.null)
    
    /// A zero JSON value
    public static let zero = JSON(0)
    
    /// The JSON value as a literal
    public var literalValue: Literal {
        get throws {
            switch self {
            case let .literal(literal):
                literal
            case .object, .array, .numeric, .string:
                throw JSONError.illegalLiteralConversion
            }
        }
    }
    
    /// The JSON value as a boolean
    public var boolValue: Bool {
        get throws {
            try literalValue.boolValue
        }
    }
    
    /// Whether or not the JSON value is a null value
    public var isNull: Bool {
        (try? literalValue.isNull) ?? false
    }
    
    /// The JSON value as an object
    public var objectValue: [String: JSON] {
        get throws {
            switch self {
            case let .object(object):
                object
            case .literal, .array, .numeric, .string:
                throw JSONError.illegalObjectConversion
            }
        }
    }
    
    /// The JSON value as an arrary
    public var arrayValue: [JSON] {
        get throws {
            switch self {
            case let .array(array):
                array
            case .literal, .object, .numeric, .string:
                throw JSONError.illegalArrayConversion
            }
        }
    }
    
    /// The JSON value as a numeric
    public var numericValue: Numeric {
        get throws {
            switch self {
            case let .numeric(numeric):
                numeric
            case .literal, .object, .array, .string:
                throw JSONError.illegalNumericConversion
            }
        }
    }
    
    /// The JSON value as a Swift integer
    public var intValue: Int {
        get throws {
            try numericValue.intValue
        }
    }
    
    /// The JSON value as a Swift double
    public var doubleValue: Double {
        get throws {
            try numericValue.doubleValue
        }
    }
    
    /// The JSON value as a Swift string
    public var stringValue: String {
        get throws {
            switch self {
            case let .string(string):
                string
            case .literal, .object, .array, .numeric:
                throw JSONError.illegalStringConversion
            }
        }
    }
    
    /// Retrieve a value from the JSON object using a specified key
    /// - Parameter key: A string key to use for lookup
    /// - Returns: The JSON value at the specified key
    public func value(
        forKey key: String
    ) throws -> JSON {
        try value(forSubscript: .key(key))
    }
    
    /// Retrieve a value from the JSON object using a specified index
    /// - Parameter index: An integer index to use for lookup
    /// - Returns: The JSON value at the specified index
    public func value(
        atIndex index: Int
    ) throws -> JSON {
        try value(forSubscript: .index(index))
    }
    
    /// Retrieve a value from the JSON object using a specified subscript
    /// - Parameter subscript: A subscript to use for lookup
    /// - Returns: The JSON value at the specified subscript
    public func value(
        forSubscript subscript: Subscript
    ) throws -> JSON {
        switch `subscript` {
        case let .key(key):
            guard case let .object(object) = self else {
                throw JSONError.invalidSubscript
            }
            guard object.keys.contains(key) else {
                throw JSONError.keyNotFound
            }
            return object[key].unsafelyUnwrapped
        case let .index(index):
            guard case let .array(array) = self else {
                throw JSONError.invalidSubscript
            }
            guard case array.indices = index else {
                throw JSONError.indexOutOfBounds
            }
            return array[index]
        }
    }

    /// Retrieve a value from the JSON object using a specified subscript
    /// - Parameter subscript: A subscript to use for lookup
    /// - Returns: The JSON value at the specified subscript
    public func value(
        forSubscript subscript: some JSONSubscriptConvertible
    ) throws -> JSON {
        try value(forSubscript: `subscript`.jsonSubscript)
    }

    
    /// Set a value in the JSON object using a specified key
    /// - Parameters:
    ///   - value: The JSON value to set
    ///   - key: A string key to use for lookup
    public mutating func setValue(
        _ value: JSON,
        forKey key: String
    ) throws {
        try setValue(value, forSubscript: .key(key))
    }
    
    /// Set a value in the JSON object using a specified index
    /// - Parameters:
    ///   - value: The JSON value to set
    ///   - index: An integer index to use for lookup
    public mutating func setValue(
        _ value: JSON,
        atIndex index: Int
    ) throws {
        try setValue(value, forSubscript: .index(index))
    }
    
    /// Set a value in the JSON object using a specified subscript
    /// - Parameters:
    ///   - value: The JSON value to set
    ///   - subscript: A subscript to use for lookup
    public mutating func setValue(
        _ value: JSON,
        forSubscript subscript: Subscript
    ) throws {
        switch (self, `subscript`) {
        case (var .array(array), let .index(index)):
            guard case array.indices = index else {
                throw JSONError.indexOutOfBounds
            }
            array[index] = value
            self = .array(array)
        case (var .object(object), let .key(key)):
            object[key] = value
            self = .object(object)
        case (.array, _),
             (.object, _),
             (.string, _),
             (.numeric, _),
             (.literal, _):
            throw JSONError.invalidSubscript
        }
    }

    /// Set a value in the JSON object using a specified subscript
    /// - Parameters:
    ///   - value: The JSON value to set
    ///   - subscript: A subscript to use for lookup
    public mutating func setValue(
        _ value: JSON,
        forSubscript subscript: some JSONSubscriptConvertible
    ) throws {
        try setValue(value, forSubscript: `subscript`.jsonSubscript)
    }

    public subscript(
        _ key: String
    ) -> JSON {
        get {
            try! value(forKey: key)
        }
        set {
            try! setValue(newValue, forKey: key)
        }
    }

    public subscript(
        _ index: Int
    ) -> JSON {
        get {
            try! value(atIndex: index)
        }
        set {
            try! setValue(newValue, atIndex: index)
        }
    }

    public subscript(
        _ subscript: Subscript
    ) -> JSON {
        get {
            try! value(forSubscript: `subscript`)
        }
        set {
            try! setValue(newValue, forSubscript: `subscript`)
        }
    }

    public subscript(
        _ subscript: some JSONSubscriptConvertible
    ) -> JSON {
        get {
            self[`subscript`.jsonSubscript]
        }
        set {
            self[`subscript`.jsonSubscript] = newValue
        }
    }
    
    // MARK: - ExpressibleByBooleanLiteral

    public typealias BooleanLiteralType = Bool

    public init(
        booleanLiteral value: BooleanLiteralType
    ) {
        self.init(value)
    }
    
    // MARK: - ExpressibleByIntegerLiteral
    
    public typealias IntegerLiteralType = Int

    public init(
        integerLiteral value: IntegerLiteralType
    ) {
        self.init(value)
    }
    
    // MARK: - ExpressibleByFloatLiteral

    public typealias FloatLiteralType = Double

    public init(
        floatLiteral value: FloatLiteralType
    ) {
        self.init(value)
    }

    // MARK: - ExpressibleByStringLiteral
    
    public typealias StringLiteralType = String

    public init(
        stringLiteral value: StringLiteralType
    ) {
        self.init(value)
    }

    // MARK: - ExpressibleByArrayLiteral
    
    public typealias ArrayLiteralElement = JSON

    public init(
        arrayLiteral elements: ArrayLiteralElement...
    ) {
        self.init(elements)
    }
    
    // MARK: - ExpressibleByDictionaryLiteral

    public typealias Key = String

    public typealias Value = JSON

    public init(
        dictionaryLiteral elements: (Key, Value)...
    ) {
        let map: [Key: Value] = elements.reduce(into: [:]) { prev, pair in
            let (key, value) = pair
            prev[key] = value
        }
        self.init(map)
    }
    
    // MARK: - ExpressibleByNilLiteral

    public init(
        nilLiteral: Void
    ) {
        self = .null
    }

}
