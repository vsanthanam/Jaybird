// Jaybird
// JaybirdMacros.swift
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
import Jaybird

public enum JSONKeyComputationRule: Equatable, Hashable, Sendable {
    case copy
    case snakeCase
}

@attached(
    extension,
    conformances: JSONEncodable, JSONDecodable
)
@attached(
    member,
    names: named(init(json:)), named(encodeToJSON)
)
public macro JSONCodable() = #externalMacro(
    module: "JaybirdCompilerPlugin",
    type: "JSONCodableMacro"
)

@attached(peer)
public macro JSONKey(
    _ keyRule: JSONKeyComputationRule = .copy,
) = #externalMacro(
    module: "JaybirdCompilerPlugin",
    type: "JSONKeyMacro"
)

@attached(peer)
public macro JSONKey(
    _ key: String
) = #externalMacro(
    module: "JaybirdCompilerPlugin",
    type: "JSONKeyMacro"
)

/// A macro that allows optional properties to be omitted from JSON encoding when their value is nil.
///
/// This macro must only be applied to stored properties with optional types.
///
/// Example:
/// ```swift
/// struct User {
///     let id: String
///     @OmitIfNil var nickname: String?
/// }
/// ```
///
/// In this example, when encoding a `User` to JSON where `nickname` is nil,
/// the resulting JSON will not contain the "nickname" key.
@attached(peer)
public macro OmitIfNil(
    _ omitIfNil: Bool = true
) = #externalMacro(
    module: "JaybirdCompilerPlugin",
    type: "OmitIfNilMacro"
)
