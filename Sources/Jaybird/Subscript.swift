// Jaybird
// Subscript.swift
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

extension JSON {

    public enum Subscript: Equatable, Hashable, Sendable {

        public init(
            _ convertible: some JSONSubscriptConvertible
        ) {
            self = convertible.jsonSubscript
        }

        public init(
            _ key: some StringProtocol
        ) {
            self = .key(String(key))
        }

        public init(
            _ index: some BinaryInteger
        ) {
            self = .index(Int(index))
        }

        case key(String)
        case index(Int)
    }

}

public protocol JSONSubscriptConvertible {

    var jsonSubscript: JSON.Subscript { get }

}

extension String: JSONSubscriptConvertible {

    public var jsonSubscript: JSON.Subscript { .key(self) }

}

extension Int: JSONSubscriptConvertible {

    public var jsonSubscript: JSON.Subscript { .index(self) }

}

extension JSONSubscriptConvertible where Self: RawRepresentable, RawValue: JSONSubscriptConvertible {

    public var jsonSubscript: JSON.Subscript { rawValue.jsonSubscript }

}
