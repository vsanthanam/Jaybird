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

public enum JSON: Equatable, Hashable, Sendable, ExpressibleByBooleanLiteral, ExpressibleByIntegerLiteral, ExpressibleByFloatLiteral, ExpressibleByStringLiteral, ExpressibleByArrayLiteral, ExpressibleByDictionaryLiteral, ExpressibleByNilLiteral {

    public init(
        _ encodable: some JSONEncodable
    ) {
        self = encodable.encodeToJSON()
    }

    case literal(Literal)

    case object([String: JSON])

    case array([JSON])

    case number(Number)

    case string(String)

    public static let null: JSON = .literal(.null)

    public var literalValue: Literal {
        get throws {
            switch self {
            case let .literal(literal):
                literal
            case .object, .array, .number, .string:
                throw JSONError.illegalLiteralConversion
            }
        }
    }

    public var boolValue: Bool {
        get throws {
            try literalValue.boolValue
        }
    }

    public var isNull: Bool {
        (try? literalValue.isNull) ?? false
    }

    public var objectValue: [String: JSON] {
        get throws {
            switch self {
            case let .object(object):
                object
            case .literal, .array, .number, .string:
                throw JSONError.illegalLiteralConversion
            }
        }
    }

    public var arrayValue: [JSON] {
        get throws {
            switch self {
            case let .array(array):
                array
            case .literal, .object, .number, .string:
                throw JSONError.illegalLiteralConversion
            }
        }
    }

    public var numberValue: Number {
        get throws {
            switch self {
            case let .number(number):
                number
            case .literal, .object, .array, .string:
                throw JSONError.illegalNumberConversion
            }
        }
    }

    public var intValue: Int {
        get throws {
            try numberValue.intValue
        }
    }

    public var doubleValue: Double {
        get throws {
            try numberValue.doubleValue
        }
    }

    public var stringValue: String {
        get throws {
            switch self {
            case let .string(string):
                string
            case .literal, .object, .array, .number:
                throw JSONError.illegalStringConversion
            }
        }
    }

    public func value(
        forKey key: String
    ) throws -> JSON {
        try value(forSubscript: .key(key))
    }

    public func value(
        atIndex index: Int
    ) throws -> JSON {
        try value(forSubscript: .index(index))
    }

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

    public func value(
        forSubscript subscript: some JSONSubscriptConvertible
    ) throws -> JSON {
        try value(forSubscript: `subscript`.jsonSubscript)
    }

    public mutating func setValue(
        _ value: JSON,
        forKey key: String
    ) throws {
        try setValue(value, forSubscript: .key(key))
    }

    public mutating func setValue(
        _ value: JSON,
        atIndex index: Int
    ) throws {
        try setValue(value, forSubscript: .index(index))
    }

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
             (.number, _),
             (.literal, _):
            throw JSONError.invalidSubscript
        }
    }

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

    public typealias BooleanLiteralType = Bool

    public init(
        booleanLiteral value: BooleanLiteralType
    ) {
        self.init(value)
    }

    public typealias IntegerLiteralType = Int

    public init(
        integerLiteral value: IntegerLiteralType
    ) {
        self.init(value)
    }

    public typealias FloatLiteralType = Double

    public init(
        floatLiteral value: FloatLiteralType
    ) {
        self.init(value)
    }

    public typealias StringLiteralType = String

    public init(
        stringLiteral value: StringLiteralType
    ) {
        self.init(value)
    }

    public typealias ArrayLiteralElement = JSON

    public init(
        arrayLiteral elements: ArrayLiteralElement...
    ) {
        self.init(elements)
    }

    public typealias Key = String

    public typealias Value = JSON

    public init(
        dictionaryLiteral elements: (Key, Value)...
    ) {
        self.init(elements.reduce(into: [:]) { prev, pair in
            let (key, value) = pair
            prev[key] = value
        })
    }

    public init(nilLiteral: Void) {
        self = .null
    }

}
