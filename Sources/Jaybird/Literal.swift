// Jaybird
// Literal.swift
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
extension JSON {

    /// A JSON literal
    public enum Literal: String, Equatable, Hashable, Sendable, ExpressibleByBooleanLiteral, ExpressibleByNilLiteral {

        public init(
            _ convertible: some JSONLiteralConvertible
        ) {
            self = convertible.jsonLiteral
        }

        case `true`

        case `false`

        case null

        public var boolValue: Bool {
            get throws {
                switch self {
                case .true:
                    true
                case .false:
                    false
                case .null:
                    throw JSONError.illegalBoolConversion
                }
            }
        }

        public var isNull: Bool {
            switch self {
            case .true, .false:
                false
            case .null:
                true
            }
        }

        public typealias BooleanLiteralType = Bool

        public init(
            booleanLiteral value: BooleanLiteralType
        ) {
            self.init(value)
        }

        public init(
            nilLiteral: Void
        ) {
            self = .null
        }

    }

}

@available(macOS 13.0, macCatalyst 16.0, iOS 16.0, watchOS 9.0, tvOS 16.0, visionOS 1.0, *)
public protocol JSONLiteralConvertible {

    var jsonLiteral: JSON.Literal { get }

}

@available(macOS 13.0, macCatalyst 16.0, iOS 16.0, watchOS 9.0, tvOS 16.0, visionOS 1.0, *)
extension Bool: JSONLiteralConvertible {

    public var jsonLiteral: JSON.Literal {
        self ? .true : .false
    }

}
