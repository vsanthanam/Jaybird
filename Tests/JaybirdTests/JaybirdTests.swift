// Jaybird
// JaybirdTests.swift
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

@testable import Jaybird
import Testing

@Suite
struct ParserTests {

    @Suite
    struct LiteralTests {

        @Test
        func parseTrue() throws {
            let raw = #"""
            true    
            """#
            let data = try #require(raw.data(using: .utf8))
            let json = try JSON(data)
            #expect(json == true)
        }

        @Test
        func parseFalse() throws {
            let raw = #"""
            false    
            """#
            let data = try #require(raw.data(using: .utf8))
            let json = try JSON(data)
            #expect(json == false)
        }

        @Test
        func parseNull() throws {
            let raw = #"""
            null  
            """#
            let data = try #require(raw.data(using: .utf8))
            let json = try JSON(data)
            #expect(json == nil)
        }

    }

    @Suite
    struct NumericTests {

        @Suite
        struct IntegerTests {

            @Test
            func normal() throws {
                let raw = #"""
                1231421
                """#
                let data = try #require(raw.data(using: .utf8))
                let json = try JSON(data)
                #expect(json == 1_231_421)
            }

            @Test
            func negative() throws {
                let raw = #"""
                -1231421
                """#
                let data = try #require(raw.data(using: .utf8))
                let json = try JSON(data)
                #expect(json == -1_231_421)
            }

        }

        @Suite
        struct DoubleTests {

            @Test
            func normal() throws {
                let raw = #"""
                123.12
                """#
                let data = try #require(raw.data(using: .utf8))
                let json = try JSON(data)
                #expect(json == 123.12)
            }

            @Test
            func negative() throws {
                let raw = #"""
                -123.12
                """#
                let data = try #require(raw.data(using: .utf8))
                let json = try JSON(data)
                #expect(json == -123.12)
            }

            @Test
            func exponent() throws {
                let raw = #"""
                1.3e4
                """#
                let data = try #require(raw.data(using: .utf8))
                let json = try JSON(data)
                #expect(json == 13000.0)
            }

            @Test
            func negativeExponent() throws {
                let raw = #"""
                1.2e-2
                """#
                let data = try #require(raw.data(using: .utf8))
                let json = try JSON(data)
                #expect(json == 0.012)
            }

        }

    }

    @Suite
    struct StringTests {

        @Test
        func normal() throws {
            let raw = #"""
            "abcdefghijklmnopqrstuvwxyz"
            """#
            let data = try #require(raw.data(using: .utf8))
            let json = try JSON(data)
            #expect(json == "abcdefghijklmnopqrstuvwxyz")
        }

        @Test
        func escapedQuote() throws {
            let raw = #"""
            "\""
            """#
            let data = try #require(raw.data(using: .utf8))
            let json = try JSON(data)
            #expect(json == #"""#)
        }

        @Test
        func reverseSolidus() throws {
            let raw = #"""
            "\\"
            """#
            let data = try #require(raw.data(using: .utf8))
            let json = try JSON(data)
            #expect(json == #"\"#)
        }

        @Test
        func solidus() throws {
            let raw = #"""
            "\/"
            """#
            let data = try #require(raw.data(using: .utf8))
            let json = try JSON(data)
            #expect(json == "/")
        }

        @Test
        func backspace() throws {
            let raw = #"""
            "\b"
            """#
            let data = try #require(raw.data(using: .utf8))
            let json = try JSON(data)
            #expect(json == "\u{0008}")
        }

        @Test
        func formfeed() throws {
            let raw = #"""
            "\f"
            """#
            let data = try #require(raw.data(using: .utf8))
            let json = try JSON(data)
            #expect(json == "\u{000C}")
        }

        @Test
        func newLine() throws {
            let raw = #"""
            "\n"
            """#
            let data = try #require(raw.data(using: .utf8))
            let json = try JSON(data)
            #expect(json == "\n")
        }

        @Test
        func carriageReturn() throws {
            let raw = #"""
            "\r"
            """#
            let data = try #require(raw.data(using: .utf8))
            let json = try JSON(data)
            #expect(json == "\u{000D}")
        }

        @Test
        func unicodeEscape() throws {
            let raw = #"""
            "\u00E9"
            """#
            let data = try #require(raw.data(using: .utf8))
            let json = try JSON(data)
            #expect(json == "é")
        }

        @Test
        func bmpExternalEscape() throws {
            let raw = #"""
            "\uD83D\uDE97"
            """#
            let data = try #require(raw.data(using: .utf8))
            let json = try JSON(data)
            #expect(json == "🚗")
        }

    }

    @Suite
    struct ArrayTests {

        @Test
        func empty() throws {
            let raw = #"""
            []
            """#
            let data = try #require(raw.data(using: .utf8))
            let json = try JSON(data)
            #expect(json == [])
        }

        @Test
        func single() throws {
            let raw = #"""
            ["a"]
            """#
            let data = try #require(raw.data(using: .utf8))
            let json = try JSON(data)
            #expect(json == ["a"])
        }

        @Test
        func multiple() throws {
            let raw = #"""
            ["a", "b", "c"]
            """#
            let data = try #require(raw.data(using: .utf8))
            let json = try JSON(data)
            #expect(json == ["a", "b", "c"])
        }

        @Test
        func withWhitespace() throws {
            let raw = #"""
            [
                "a",
                "b",
                "c"
            ]
            """#
            let data = try #require(raw.data(using: .utf8))
            let json = try JSON(data)
            #expect(json == ["a", "b", "c"])
        }

    }

    @Suite
    struct ObjectTests {

        @Test
        func empty() throws {
            let raw = #"""
            {}
            """#
            let data = try #require(raw.data(using: .utf8))
            let json = try JSON(data)
            #expect(json == [:])
        }

        @Test
        func single() throws {
            let raw = #"""
            {"foo": true}
            """#
            let data = try #require(raw.data(using: .utf8))
            let json = try JSON(data)
            #expect(json == ["foo": true])
        }

        @Test
        func multiple() throws {
            let raw = #"""
            {"foo": true, "bar": false}
            """#
            let data = try #require(raw.data(using: .utf8))
            let json = try JSON(data)
            #expect(json == ["foo": true, "bar": false])
        }

        @Test
        func withWhitespace() throws {
            let raw = #"""
            {
                "foo": true,
                "bar": false
            }
            """#
            let data = try #require(raw.data(using: .utf8))
            let json = try JSON(data)
            #expect(json == ["foo": true, "bar": false])
        }

    }

    @Test
    func complexObject() throws {
        let raw = #"""
        {
            "foo": true,
            "bar": false,
            "garply": null,
            "baz": [
                1,
                2,
                null,
                {
                    "qux": "corge",
                    "grault": [{}]
                }
            ],
            "garply": null,
            "waldo": "fred",
            "fred": null,
            "plugh": [
                0.1
            ]
        }
        """#
        let data = try #require(raw.data(using: .utf8))
        let json = try JSON(data)
        #expect(json == [
            "foo": true,
            "bar": false,
            "baz": [
                1,
                2,
                nil,
                [
                    "qux": "corge",
                    "grault": [[:]],
                ]
            ],
            "garply": nil,
            "waldo": "fred",
            "fred": nil,
            "plugh": [0.1],
        ])
    }

}
