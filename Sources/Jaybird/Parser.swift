// Jaybird
// Parser.swift
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

protocol Parser<Product>: Sendable {

    associatedtype Product: Sendable

    func consume(
        _ input: inout Data
    ) throws -> Product

}

protocol ParserCombinator: Parser {

    associatedtype Body: Parser<Product>

    var body: Body { get }

}

extension ParserCombinator {

    func consume(
        _ input: inout Data
    ) throws -> Product {
        try body.consume(&input)
    }

}

@resultBuilder
enum ParserBuilder {

    static func buildExpression<T>(
        _ expression: T
    ) -> T where T: Parser {
        expression
    }

    static func buildExpression(
        _ expression: Data
    ) -> Exactly<Void> {
        Exactly(expression)
    }

    @ParserBuilder
    static func buildExpression(
        _ expression: [UInt8]
    ) -> Exactly<Void> {
        Data(expression)
    }

    @ParserBuilder
    static func buildExpression(
        _ expression: UInt8
    ) -> Exactly<Void> {
        [expression]

    }

    static func buildPartialBlock<T>(
        first: T
    ) -> T where T: Parser {
        first
    }

    static func buildPartialBlock<each Accumulated, Next>(
        accumulated: repeat each Accumulated,
        next: Next
    ) -> _Accumulate<repeat each Accumulated, Next> where repeat each Accumulated: Parser, Next: Parser {
        .init(
            accumulated: repeat each accumulated,
            next: next
        )
    }

    static func buildPartialBlock<Next>(
        accumulated: some Parser<Void>,
        next: Next
    ) -> some Parser<Next.Product> where Next: Parser {
        _SkipAccumulated(
            accumulated,
            next
        )
    }

    static func buildPartialBlock<Accumulated, Next>(
        accumulated: Accumulated,
        next: some Parser<Void>
    ) -> some Parser<Accumulated.Product> where Accumulated: Parser {
        _SkipNext(
            accumulated,
            next
        )
    }

    static func buildPartialBlock(
        accumulated: some Parser<Void>,
        next: some Parser<Void>
    ) -> some Parser<Void> {
        _SkipBoth(
            accumulated,
            next
        )
    }

    static func buildPartialBlock<Next>(
        accumulated: some Parser<Void?>,
        next: Next
    ) -> some Parser<Next.Product> where Next: Parser {
        _SkipAccumulated(
            accumulated.asVoid(),
            next
        )
    }

    static func buildPartialBlock<Accumulated>(
        accumulated: Accumulated,
        next: some Parser<Void?>
    ) -> some Parser<Accumulated.Product> where Accumulated: Parser {
        _SkipNext(
            accumulated,
            next.asVoid()
        )
    }

    static func buildPartialBlock(
        accumulated: some Parser<Void?>,
        next: some Parser<Void?>
    ) -> some Parser<Void> {
        _SkipBoth(
            accumulated.asVoid(),
            next.asVoid()
        )
    }

    struct _Accumulate<each Accumulated, Next>: Parser where repeat each Accumulated: Parser, Next: Parser {

        init(
            accumulated: repeat each Accumulated,
            next: Next
        ) {
            self.accumulated = (repeat (each accumulated))
            self.next = next
        }

        func consume(
            _ input: inout Data
        ) throws -> (repeat (each Accumulated).Product, Next.Product) {
            try (repeat (each accumulated).consume(&input), next.consume(&input))
        }

        private let accumulated: (repeat (each Accumulated))
        private let next: Next

    }

    struct _SkipAccumulated<Accumulated, Next>: Parser where Accumulated: Parser<Void>, Next: Parser {

        init(
            _ accumulated: Accumulated,
            _ next: Next
        ) {
            self.accumulated = accumulated
            self.next = next
        }

        func consume(
            _ input: inout Data
        ) throws -> Next.Product {
            try accumulated.consume(&input)
            return try next.consume(&input)
        }

        private let accumulated: Accumulated
        private let next: Next

    }

    struct _SkipNext<Accumulated, Next>: Parser where Accumulated: Parser, Next: Parser<Void> {

        init(
            _ accumulated: Accumulated,
            _ next: Next
        ) {
            self.accumulated = accumulated
            self.next = next
        }

        func consume(
            _ input: inout Data
        ) throws -> Accumulated.Product {
            let result = try accumulated.consume(&input)
            try next.consume(&input)
            return result
        }

        private let accumulated: Accumulated
        private let next: Next

    }

    struct _SkipBoth<Accumulated, Next>: Parser where Accumulated: Parser<Void>, Next: Parser<Void> {

        init(
            _ accumulated: Accumulated,
            _ next: Next
        ) {
            self.accumulated = accumulated
            self.next = next
        }

        func consume(
            _ input: inout Data
        ) throws {
            try accumulated.consume(&input)
            try next.consume(&input)
        }

        private let accumulated: Accumulated
        private let next: Next

    }

}

extension Parser {

    func map<NewProduct>(
        _ fn: @Sendable @escaping (Product) throws -> NewProduct
    ) -> some Parser<NewProduct> {
        Map(self, fn)
    }

}

struct Map<Upstream, Product>: Parser where Upstream: Parser {

    init(
        _ upstream: Upstream,
        _ fn: @Sendable @escaping (Upstream.Product) throws -> Product
    ) {
        self.upstream = upstream
        self.fn = fn
    }

    func consume(
        _ input: inout Data
    ) throws -> Product {
        try fn(upstream.consume(&input))
    }

    private let upstream: Upstream
    private let fn: @Sendable (Upstream.Product) throws -> Product

}

extension Parser {

    func asVoid() -> some Parser<Void> where Product == Void? {
        AsVoid(self)
    }

}

struct AsVoid<Upstream>: ParserCombinator where Upstream: Parser<Void?> {

    init(
        _ upstream: Upstream
    ) {
        self.upstream = upstream
    }

    var body: some Parser<Void> {
        upstream
            .map { _ in }
    }

    private let upstream: Upstream

}

struct Exactly<Product>: Parser {

    init(
        _ match: Data,
        fn: @Sendable @escaping (Data) throws -> Product
    ) {
        self.match = match
        self.fn = fn
    }

    init(
        _ match: Data
    ) where Product == Void {
        self.init(match) { _ in }
    }

    func consume(
        _ input: inout Data
    ) throws -> Product {
        guard input.starts(with: match) else {
            throw ParseError("Unexpected input")
        }
        input.removeFirst(match.count)
        return try fn(match)
    }

    private let match: Data
    private let fn: @Sendable (Data) throws -> Product

}

struct ParseError: Error, CustomStringConvertible {

    init(_ message: String) {
        self.message = message
    }

    var description: String {
        message
    }

    let message: String

}
