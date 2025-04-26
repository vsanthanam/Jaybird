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

@Test
func example() {
    var json: JSON = [
        "Foo": [1, 2],
        "Bar": [
            "alpha": 1,
            "beta": 1
        ],
        "Baz": nil
    ]
    json["Foo"][1] = 3
    json["Bar"]["alpha"] = nil
    json["Baz"] = 1.2
    #expect(json == [
        "Foo": [1, 3],
        "Bar": [
            "alpha": nil,
            "beta": 1
        ],
        "Baz": 1.2
    ])
}

@Test
func parse() throws {

    let str = #"""
    {"foo": [1, 2], "bar": {"alpha": 1e2, "beta": 1}, "baz": null}
    """#

    let data = str.data(using: .utf8)!

    let json = try JSON(data)

    #expect(json == ["foo": [1, 2], "bar": ["alpha": 100.0, "beta": 1], "baz": nil])
}
