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

func load5mb() -> Data {
    let url = Bundle.module.url(forResource: "benchmark5mb", withExtension: "json")!
    return try! Data(contentsOf: url)
}

func load50mb() -> Data {
    let url = Bundle.module.url(forResource: "benchmark50mb", withExtension: "json")!
    return try! Data(contentsOf: url)
}

let test5mb = load5mb()

let test50mb = load50mb()

let micro = #"{"a":1}"#.data(using: .utf8)!

let standard = #"""
{
  "name": "BenchmarkTest",
  "description": "This is a test JSON with Unicode \u2764\ufe0f and escaped characters like \n, \t, and \"quotes\".",
  "version": 1,
  "enabled": true,
  "settings": {
    "retryCount": 5,
    "timeout": 30.5,
    "features": {
      "logging": true,
      "metrics": false,
      "experimental": true
    }
  },
  "users": [
    {
      "id": 1,
      "username": "alice",
      "roles": ["admin", "editor"],
      "profile": {
        "location": "Wonderland",
        "website": "https://alice.example.com"
      }
    },
    {
      "id": 2,
      "username": "bob",
      "roles": ["viewer"],
      "profile": {
        "bio": "Builder of dreams.",
        "location": "Builderland",
        "website": null
      }
    }
  ],
  "logs": [
    "Start processing...",
    "Loading configuration...",
    "Configuration loaded successfully.",
    "Processing user data...",
    "Finished processing."
  ],
  "data": {
    "values": [
      1234567890,
      -987654321,
      3.1415926535,
      2.7182818284,
      null,
      true,
      false,
      "\uD834\uDD1E musical G clef"
    ],
    "matrix": [
      [1,2,3],
      [4,5,6],
      [7,8,9]
    ]
  },
  "meta": {
    "created_at": "2025-04-27T08:00:00Z",
    "updated_at": "2025-04-27T09:30:00Z",
    "tags": ["benchmark", "test", "json", "parser", "unicode", "escape"]
  }
}
"""#.data(using: .utf8)!

nonisolated(unsafe) let benchmarks = {
    Benchmark("Parse (Micro)") { benchmark in
        for _ in benchmark.scaledIterations {
            _ = try Jaybird.JSON(micro)
        }
    }
    Benchmark("Parse (Standard Payload)") { benchmark in
        for _ in benchmark.scaledIterations {
            _ = try Jaybird.JSON(standard)
        }
    }
    Benchmark("Parse (5MB)") { benchmark in
        for _ in benchmark.scaledIterations {
            _ = try Jaybird.JSON(test5mb)
        }
    }
    Benchmark("Parse (50MB)") { benchmark in
        let data = load50mb()
        for _ in benchmark.scaledIterations {
            _ = try Jaybird.JSON(test50mb)
        }
    }
//    Benchmark("Parse (Micro)") { benchmark in
//        for _ in benchmark.scaledIterations {
//            _ = try JSONSerialization.jsonObject(with: micro)
//        }
//    }
//    Benchmark("Parse (Standard Payload)") { benchmark in
//        for _ in benchmark.scaledIterations {
//            _ = try JSONSerialization.jsonObject(with: standard)
//        }
//    }
//    Benchmark("Parse (5MB)") { benchmark in
//        for _ in benchmark.scaledIterations {
//            _ = try JSONSerialization.jsonObject(with: test5mb)
//        }
//    }
//    Benchmark("Parse (50MB)") { benchmark in
//        for _ in benchmark.scaledIterations {
//            _ = try JSONSerialization.jsonObject(with: test50mb)
//        }
//    }
}
