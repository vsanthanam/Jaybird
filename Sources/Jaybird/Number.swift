// Jaybird
// Number.swift
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

    public enum Number: Equatable, Hashable, Sendable {

        public init(
            _ convertible: some JSONNumberConvertible
        ) {
            self = convertible.jsonNumber
        }

        case int(Int)

        case double(Double)

        public var intValue: Int {
            get throws {
                switch self {
                case let .int(int):
                    int
                case .double:
                    throw JSONError.illegalIntConversion
                }
            }
        }

        public var doubleValue: Double {
            get throws {
                switch self {
                case let .double(double):
                    double
                case .int:
                    throw JSONError.illegalDoubleConversion
                }
            }
        }

        public typealias IntegerLiteralType = Int

        public init(
            integerLiteral value: IntegerLiteralType
        ) {
            self = .int(value)
        }

        public typealias FloatLiteralType = Double

        public init(
            floatLiteral value: FloatLiteralType
        ) {
            self = .double(value)
        }

    }

}

public protocol JSONNumberConvertible {

    var jsonNumber: JSON.Number { get }

}

extension Int: JSONNumberConvertible {

    public var jsonNumber: JSON.Number {
        .int(self)
    }

}

extension Double: JSONNumberConvertible {

    public var jsonNumber: JSON.Number {
        .double(self)
    }

}
