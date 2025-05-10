// Jaybird
// JSONCodableMacroTests.swift
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

import SwiftSyntax
import SwiftSyntaxBuilder
import SwiftSyntaxMacros
import SwiftSyntaxMacrosTestSupport
import XCTest

// Macro implementations build for the host, so the corresponding module is not available when cross-compiling. Cross-compiled tests may still make use of the macro itself in end-to-end tests.
#if canImport(JaybirdCompilerPlugin)
    import JaybirdCompilerPlugin

    let testMacros: [String: Macro.Type] = [
        "JSONCodable": JSONCodableMacro.self,
    ]
#endif

final class JSONCodableMacroTests: XCTestCase {

    func test_basic() throws {
        #if canImport(JaybirdCompilerPlugin)
            assertMacroExpansion(
                """
                @JSONCodable
                struct Foo {

                    let name: String

                }
                """,
                expandedSource: """
                struct Foo {

                    let name: String

                    @Jaybird.JSON.Builder
                    public func encodeToJSON() -> JSON {
                        ("name", name)
                    }

                    public init(json: JSON) throws {
                        self.name = try .init(json: try json.value(forSubscript: "name"))
                    }

                }

                extension Foo: Jaybird.JSONEncodable {
                }

                extension Foo: Jaybird.JSONDecodable {
                }
                """,
                macros: testMacros
            )
        #else
            throw XCTSkip("macros are only supported when running tests for the host platform")
        #endif

    }

    func test_customKey() throws {
        #if canImport(JaybirdCompilerPlugin)
            assertMacroExpansion(
                """
                @JSONCodable
                struct Foo {

                    @JSONKey("custom_name")
                    let name: String

                }
                """,
                expandedSource: """
                struct Foo {

                    @JSONKey("custom_name")
                    let name: String

                    @Jaybird.JSON.Builder
                    public func encodeToJSON() -> JSON {
                        ("custom_name", name)
                    }

                    public init(json: JSON) throws {
                        self.name = try .init(json: try json.value(forSubscript: "custom_name"))
                    }

                }

                extension Foo: Jaybird.JSONEncodable {
                }

                extension Foo: Jaybird.JSONDecodable {
                }
                """,
                macros: testMacros
            )
        #else
            throw XCTSkip("macros are only supported when running tests for the host platform")
        #endif

    }

    func test_snakeCase() throws {
        #if canImport(JaybirdCompilerPlugin)
            assertMacroExpansion(
                """
                @JSONCodable
                struct Foo {

                    @JSONKey(.snakeCase)
                    let fooBar: String

                }
                """,
                expandedSource: """
                struct Foo {

                    @JSONKey(.snakeCase)
                    let fooBar: String

                    @Jaybird.JSON.Builder
                    public func encodeToJSON() -> JSON {
                        ("foo_bar", fooBar)
                    }

                    public init(json: JSON) throws {
                        self.fooBar = try .init(json: try json.value(forSubscript: "foo_bar"))
                    }

                }

                extension Foo: Jaybird.JSONEncodable {
                }

                extension Foo: Jaybird.JSONDecodable {
                }
                """,
                macros: testMacros
            )
        #else
            throw XCTSkip("macros are only supported when running tests for the host platform")
        #endif

    }

    func test_omitIfNil() throws {
        #if canImport(JaybirdCompilerPlugin)
            assertMacroExpansion(
                """
                @JSONCodable
                struct Foo {

                    @OmitIfNil
                    let name: String?

                }
                """,
                expandedSource: """
                struct Foo {

                    @OmitIfNil
                    let name: String?

                    @Jaybird.JSON.Builder
                    public func encodeToJSON() -> JSON {
                        if let name {
                        ("name", name)
                        }
                    }

                    public init(json: JSON) throws {
                        self.name = try .init(json: (try? json.value(forSubscript: "name")) ?? .null)
                    }

                }

                extension Foo: Jaybird.JSONEncodable {
                }

                extension Foo: Jaybird.JSONDecodable {
                }
                """,
                macros: testMacros
            )
        #else
            throw XCTSkip("macros are only supported when running tests for the host platform")
        #endif
    }

}
