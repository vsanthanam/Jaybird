// Jaybird
// Numeric.swift
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

    public enum Numeric: Equatable, Hashable, Sendable, ExpressibleByIntegerLiteral, ExpressibleByFloatLiteral {

        public init(
            _ convertible: some JSONNumericConvertible
        ) {
            self = convertible.jsonNumeric
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

        public static func == (lhs: Numeric, rhs: Numeric) -> Bool {
            switch (lhs, rhs) {
            case let (.int(lhs), .int(rhs)):
                lhs == rhs
            case let (.double(lhs), .double(rhs)):
                lhs == rhs
            case let (.int(lhs), .double(rhs)):
                if rhs.truncatingRemainder(dividingBy: 1.0) == 0 {
                    lhs == (Int(rhs))
                } else {
                    false
                }
            case let (.double(lhs), .int(rhs)):
                if lhs.truncatingRemainder(dividingBy: 1.0) == 0 {
                    (Int(lhs)) == rhs
                } else {
                    false
                }
            }
        }

    }

}

@available(macOS 13.0, macCatalyst 16.0, iOS 16.0, watchOS 9.0, tvOS 16.0, visionOS 1.0, *)
public protocol JSONNumericConvertible {

    var jsonNumeric: JSON.Numeric { get }

}

@available(macOS 13.0, macCatalyst 16.0, iOS 16.0, watchOS 9.0, tvOS 16.0, visionOS 1.0, *)
extension Int: JSONNumericConvertible {

    public var jsonNumeric: JSON.Numeric {
        .int(self)
    }

}

@available(macOS 13.0, macCatalyst 16.0, iOS 16.0, watchOS 9.0, tvOS 16.0, visionOS 1.0, *)
extension Double: JSONNumericConvertible {

    public var jsonNumeric: JSON.Numeric {
        .double(self)
    }

}
