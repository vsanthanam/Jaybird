// Jaybird
// JSONCodable.swift
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

public typealias JSONCodable = JSONDecodable & JSONEncodable

public protocol JSONEncodable {

    func encodeToJSON() -> JSON

}

public protocol JSONDecodable {

    init(from json: JSON) throws

}

extension JSON: JSONCodable {

    public func encodeToJSON() -> JSON {
        self
    }

    public init(from json: JSON) throws {
        self = json
    }

}

extension Bool: JSONCodable {

    public func encodeToJSON() -> JSON {
        self ? .literal(.true) : .literal(.false)
    }

    public init(from json: JSON) throws {
        self = try json.boolValue
    }

}

extension JSON.Literal: JSONCodable {

    public func encodeToJSON() -> JSON {
        .literal(self)
    }

    public init(from json: JSON) throws {
        self = try json.literalValue
    }

}

extension Int: JSONCodable {

    public func encodeToJSON() -> JSON {
        .number(.int(self))
    }

    public init(from json: JSON) throws {
        self = try json.intValue
    }

}

extension Double: JSONCodable {

    public func encodeToJSON() -> JSON {
        .number(.double(self))
    }

    public init(from json: JSON) throws {
        self = try json.doubleValue
    }

}

extension JSON.Number: JSONCodable {

    public func encodeToJSON() -> JSON {
        .number(self)
    }

    public init(from json: JSON) throws {
        self = try json.numberValue
    }

}

extension String: JSONCodable {

    public func encodeToJSON() -> JSON {
        .string(self)
    }

    public init(from json: JSON) throws {
        self = try json.stringValue
    }

}

extension [JSON]: JSONCodable {

    public func encodeToJSON() -> JSON {
        .array(self)
    }

    public init(from json: JSON) throws {
        self = try json.arrayValue
    }

}

extension [String: JSON]: JSONCodable {

    public func encodeToJSON() -> JSON {
        .object(self)
    }

    public init(from json: JSON) throws {
        self = try json.objectValue
    }

}
