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

@available(macOS 13.0, macCatalyst 16.0, iOS 16.0, watchOS 9.0, tvOS 16.0, visionOS 1.0, *)
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
        self = try Deserializer.object(from: data)
    }

    /// Create a `JSON` value by deserializing an array of bytes that represent a UTF-8 encoded JSON string
    /// - Parameter bytes: The bytes to deserialize
    public init(
        _ bytes: [UInt8]
    ) throws {
        try self.init(Data(bytes))
    }

    /// Create a `JSON` value by deserializing a Swift string
    /// - Parameter string: The string to deserialize
    public init(
        deserializing string: String
    ) throws {
        self = try Deserializer.object(from: string)
    }

    /// Create a `JSON` object declaratively
    /// - Parameter fields: The fields in the object
    public init(
        @Builder fields: () -> JSON
    ) {
        self = fields()
    }

    // MARK: - API

    /// A JSON object
    public typealias Object = [String: JSON]

    /// A JSON array
    public typealias Array = [JSON]

    /// A JSON string
    public typealias String = Swift.String

    /// A JSON literal value
    case literal(Literal)

    /// A JSON object
    case object(Object)

    /// A JSON array
    case array(Array)

    /// A JSON numeric value
    case numeric(Numeric)

    /// A JSON string
    case string(String)

    /// A null JSON value
    public static let null: JSON = nil

    /// A zero JSON value
    public static let zero: JSON = 0

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
    public var objectValue: Object {
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
    public var arrayValue: Array {
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
        forKey key: some StringProtocol
    ) throws -> JSON {
        try value(forSubscript: .init(key))
    }

    /// Retrieve a value from the JSON object using a specified key
    /// - Parameter key: A string key to use for lookup
    /// - Returns: The JSON value at the specified key
    public func value<Key>(
        forKey key: Key
    ) throws -> JSON where Key: RawRepresentable, Key.RawValue: StringProtocol {
        try value(forKey: key.rawValue)
    }

    /// Retrieve a value from the JSON object using a specified index
    /// - Parameter index: An integer index to use for lookup
    /// - Returns: The JSON value at the specified index
    public func value(
        atIndex index: some BinaryInteger
    ) throws -> JSON {
        try value(forSubscript: .init(index))
    }

    /// Retrieve a value from the JSON object using a specified index
    /// - Parameter index: An integer index to use for lookup
    /// - Returns: The JSON value at the specified index
    public func value<Index>(
        atIndex index: Index
    ) throws -> JSON where Index: RawRepresentable, Index.RawValue: BinaryInteger {
        try value(atIndex: index.rawValue)
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
        let `subscript` = Subscript(`subscript`)
        return try value(forSubscript: `subscript`)
    }

    /// Retrieve a value from the JSON object using a specified path
    /// - Parameter path: The path to use for lookup
    /// - Returns: The JSON value at the specified path
    public func value(
        atPath path: [Subscript] /// Retrieve a value from the JSON object using a specified path
        /// - Parameter path: The path to use for lookup
        /// - Returns: The JSON value at the specified path
    ) throws -> JSON {
        var json = self
        try path.forEach { component in
            json = try json.value(forSubscript: component)
        }
        return json
    }

    /// Retrieve a value from the JSON object using a specified path
    /// - Parameter path: The path to use for lookup
    /// - Returns: The JSON value at the specified path
    @available(macOS 14.0, macCatalyst 17.0, iOS 17.0, watchOS 10.0, tvOS 17.0, visionOS 1.0, *)
    public func value<each PathComponent>(
        atPath path: repeat each PathComponent
    ) throws -> JSON where repeat each PathComponent: JSONSubscriptConvertible {
        var json = self
        for component in repeat each path {
            let `subscript` = Subscript(component)
            json = try json.value(forSubscript: `subscript`)
        }
        return json
    }

    /// Set a value in the JSON object using a specified key
    /// - Parameters:
    ///   - value: The JSON value to set
    ///   - key: A string key to use for lookup
    public mutating func setValue(
        _ value: JSON,
        forKey key: some StringProtocol
    ) throws {
        try setValue(value, forSubscript: .init(key))
    }

    /// Set a value in the JSON object using a specified key
    /// - Parameters:
    ///   - value: The JSON value to set
    ///   - key: A string key to use for lookup
    public mutating func setValue<Key>(
        _ value: JSON,
        forKey key: Key
    ) throws where Key: RawRepresentable, Key.RawValue: StringProtocol {
        try setValue(value, forKey: key.rawValue)
    }

    /// Set a value in the JSON object using a specified index
    /// - Parameters:
    ///   - value: The JSON value to set
    ///   - index: An integer index to use for lookup
    public mutating func setValue(
        _ value: JSON,
        atIndex index: some BinaryInteger
    ) throws {
        try setValue(value, forSubscript: .init(index))
    }

    /// Set a value in the JSON object using a specified index
    /// - Parameters:
    ///   - value: The JSON value to set
    ///   - index: An integer index to use for lookup
    public mutating func setValue<Index>(
        _ value: JSON,
        atIndex index: Index
    ) throws where Index: RawRepresentable, Index.RawValue: BinaryInteger {
        try setValue(value, atIndex: index.rawValue)
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
        let `subscript` = Subscript(`subscript`)
        try setValue(
            value,
            forSubscript: `subscript`
        )
    }

    /// Serialize the JSON object to a byte buffer
    /// - Returns: The serialized byte buffe
    public func serialize() throws -> Data {
        try Serializer.data(from: self)
    }

    /// Produce a string representation of the JSON object
    /// - Returns: The serialized string
    public func stringify() throws -> String {
        try Serializer.string(from: self)
    }

    /// Write the JSON model to disk
    /// - Parameters:
    ///   - fileURL: The file URL write to
    ///   - options: Serialization options to use when writing the JSON model to disk
    ///   - shouldOverwrite: Whether or not existing content should be overwritten
    @available(macOS 13.0, macCatalyst 16.0, *)
    @discardableResult
    public func write(
        fileURL: URL,
        options: JSON.Serializer.Options = .default,
        shouldOverwrite: Bool = false
    ) async throws -> Data {
        if FileManager.default.fileExists(atPath: fileURL.path()) {
            if shouldOverwrite {
                try FileManager.default.removeItem(at: fileURL)
                try Task.checkCancellation()
            } else {
                throw JSONError.fileExists
            }
        }

        let data = try serialize()
        try Task.checkCancellation()
        try data.write(to: fileURL, options: .withoutOverwriting)
        try Task.checkCancellation()
        return data
    }

    /// Retreive a value from the JSON object using a specified subscript
    /// - Parameter subscript: A subscript to use for lookup
    /// - Returns: The JSON value at the specified subscript
    /// - Warning: This subscript is unsafe and should only be used when you are sure the subscript exists. A missing subscript will result in a runtime failure.
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

    /// Retreive a value from the JSON object using a specified subscript
    /// - Parameter subscript: A subscript to use for lookup
    /// - Returns: The JSON value at the specified subscript
    /// - Warning: This subscript is unsafe and should only be used when you are sure the subscript exists. A missing subscript will result in a runtime failure.
    public subscript(
        _ subscript: some JSONSubscriptConvertible
    ) -> JSON {
        get {
            try! value(forSubscript: `subscript`)
        }
        set {
            try! setValue(newValue, forSubscript: `subscript`)
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
        self = .literal(.null)
    }

}
