// Jaybird
// JaybirdBenchmark.swift
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

import Benchmark
import Foundation
import Jaybird

func load(benchmark name: String) -> (String, Data) {
    let resource = "benchmark-\(name)"
    let url = Bundle.module.url(forResource: resource, withExtension: "json")!
    return (name, try! Data(contentsOf: url))
}

let files = [
    "micro",
    "micro-pretty",
    "64kb",
    "64kb-pretty",
    "256kb",
    "256kb-pretty",
    "512kb",
    "512kb-pretty",
    "1mb",
    "1mb-pretty",
    "5mb",
    "5mb-pretty",
    "strings",
    "numeric",
    "integers"
]
.map(load)

nonisolated(unsafe) let benchmarks = {
    for (name, data) in files {
        Benchmark("Parse (\(name))") { benchmark in
            for _ in benchmark.scaledIterations {
//                _ = try Jaybird.JSON(data)
//                _ = try JSONSerialization.jsonObject(with: data)
            }
        }
    }
}
