// Jaybird
// ParserCore.swift
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

    @ParserBuilder
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
    ) -> Swallow<Exactly<Data>> {
        Swallow {
            Exactly(expression)
        }
    }

    @ParserBuilder
    static func buildExpression(
        _ expression: [UInt8]
    ) -> Swallow<Exactly<Data>> {
        Data(expression)
    }

    @ParserBuilder
    static func buildExpression(
        _ expression: UInt8
    ) -> Swallow<Exactly<Data>> {
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

    static func buildPartialBlock<Accumulated, Next>(
        accumulated: Accumulated,
        next: Next
    ) -> _SkipAccumulated<Accumulated, Next> where Accumulated: Parser<Void>, Next: Parser {
        _SkipAccumulated(
            accumulated,
            next
        )
    }

    static func buildPartialBlock<Accumulated, Next>(
        accumulated: Accumulated,
        next: Next
    ) -> _SkipNext<Accumulated, Next> where Accumulated: Parser, Next: Parser<Void> {
        _SkipNext(
            accumulated,
            next
        )
    }

    static func buildPartialBlock<Accumulated, Next>(
        accumulated: Accumulated,
        next: Next
    ) -> _SkipBoth<Accumulated, Next> where Accumulated: Parser<Void>, Next: Parser<Void> {
        _SkipBoth(
            accumulated,
            next
        )
    }

    static func buildPartialBlock<Accumulated, Next>(
        accumulated: Accumulated,
        next: Next
    ) -> _SkipAccumulated<AsVoid<Accumulated>, Next> where Accumulated: Parser<Void?>, Next: Parser {
        _SkipAccumulated(
            AsVoid(accumulated),
            next
        )
    }

    static func buildPartialBlock<Accumulated, Next>(
        accumulated: Accumulated,
        next: Next
    ) -> _SkipNext<Accumulated, AsVoid<Next>> where Accumulated: Parser, Next: Parser<Void?> {
        _SkipNext(
            accumulated,
            AsVoid(next)
        )
    }

    static func buildPartialBlock<Accumulated, Next>(
        accumulated: Accumulated,
        next: Next
    ) -> _SkipBoth<AsVoid<Accumulated>, AsVoid<Next>> where Accumulated: Parser<Void?>, Next: Parser<Void?> {
        _SkipBoth(
            AsVoid(accumulated),
            AsVoid(next)
        )
    }

    static func buildEither<First, Second>(
        first component: First
    ) -> _Either<First, Second> where First: Parser, Second: Parser, First.Product == Second.Product {
        .first(component)
    }

    static func buildEither<First, Second>(
        second component: Second
    ) -> _Either<First, Second> where First: Parser, Second: Parser, First.Product == Second.Product {
        .second(component)

    }

    @ParserBuilder
    static func buildOptional<T>(
        _ component: T?
    ) -> _Either<Map<T, T.Product?>, Always<T.Product?>> where T: Parser {
        if let component {
            Map(component) { value in T.Product?.some(value) }
        } else {
            Always(T.Product?.none)
        }
    }

    static func buildArray<Element>(
        _ components: [Element]
    ) -> _List<Element> where Element: Parser {
        .init(components)
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

    enum _Either<First, Second>: Parser where First: Parser, Second: Parser, First.Product == Second.Product {

        case first(First)
        case second(Second)

        func consume(
            _ input: inout Data
        ) throws -> First.Product {
            switch self {
            case let .first(parser):
                try parser.consume(&input)
            case let .second(parser):
                try parser.consume(&input)
            }
        }

    }

    struct _List<Element>: Parser where Element: Parser {

        init(_ list: [Element]) {
            self.list = list
        }

        private let list: [Element]

        func consume(
            _ input: inout Data
        ) throws -> [Element.Product] {
            try list
                .map { parser in
                    try parser.consume(&input)
                }
        }

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

struct ParseError: Error, CustomStringConvertible {

    init(_ message: String) {
        self.message = message
    }

    var description: String {
        message
    }

    let message: String

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
    ) where Product == Data {
        self.init(match) { data in data }
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

struct Swallow<T>: ParserCombinator where T: Parser {

    init(@ParserBuilder parser: () -> T) {
        self.parser = parser()
    }

    var body: some Parser<Void> {
        parser
            .map { _ in }
    }

    private let parser: T

}

struct Always<Product>: Parser where Product: Sendable {

    init() where Product == Void {
        self.init(())
    }

    init(_ value: Result<Product, any Error>) {
        self.value = value
    }

    init(_ fn: () throws -> Product) {
        self.init(.init(catching: fn))
    }

    init(_ product: Product) {
        self.init { product }
    }

    init(_ error: any Error) {
        self.init { throw error }
    }

    func consume(
        _ input: inout Data
    ) throws -> Product {
        try value.get()
    }

    private let value: Result<Product, any Error>

}

struct Skip: ParserCombinator {

    init() {}

    var body: some Parser<Void> {
        Always()
    }

}

struct AnyParser<Product>: Parser {

    init(_ parser: some Parser<Product>) {
        self._consume = parser.consume
    }

    func consume(
        _ input: inout Data
    ) throws -> Product {
        try _consume(&input)
    }

    private let _consume: @Sendable (inout Data) throws -> Product

}

struct OneOf<These, Product>: ParserCombinator where These: Parser<Product> {

    init(
        @OneOfBuilder<Product> these parsers: () -> These
    ) {
        these = parsers()
    }

    var body: some Parser<Product> {
        these
    }

    private let these: These

}

@resultBuilder
enum OneOfBuilder<Product> {

    static func buildExpression(
        _ expression: Data
    ) -> Exactly<Data> {
        Exactly(expression)
    }

    @OneOfBuilder
    static func buildExpression(
        _ expression: [UInt8]
    ) -> Exactly<Data> where Product == Data {
        Data(expression)
    }

    @OneOfBuilder
    static func buildExpression(
        _ expression: UInt8
    ) -> Exactly<Data> where Product == Data {
        [expression]
    }

    static func buildExpression<T>(
        _ expression: T
    ) -> T where T: Parser<Product> {
        expression
    }

    static func buildPartialBlock<T>(
        first: T
    ) -> T where T: Parser<Product> {
        first
    }

    static func buildPartialBlock<Accumulated, Next>(
        accumulated: Accumulated,
        next: Next
    ) -> _OneOfThese<Accumulated, Next> where Accumulated: Parser<Product>, Next: Parser<Product> {
        .init(accumulated, next)
    }

    static func buildEither<First, Second>(
        first component: First
    ) -> _Either<First, Second> where First: Parser<Product>, Second: Parser<Product> {
        .first(component)
    }

    static func buildEither<First, Second>(
        second component: Second
    ) -> _Either<First, Second> where First: Parser<Product>, Second: Parser<Product> {
        .second(component)
    }

    struct _OneOfThese<First, Second>: Parser where First: Parser, Second: Parser, First.Product == Second.Product {

        init(
            _ first: First,
            _ second: Second
        ) {
            self.first = first
            self.second = second
        }

        func consume(
            _ input: inout Data
        ) throws -> First.Product {
            let original = input
            do {
                return try first.consume(&input)
            } catch {
                input = original
                return try second.consume(&input)
            }
        }

        private let first: First
        private let second: Second

    }

    enum _Either<First, Second>: Parser where First: Parser, Second: Parser, First.Product == Second.Product {

        case first(First)
        case second(Second)

        func consume(
            _ input: inout Data
        ) throws -> First.Product {
            switch self {
            case let .first(parser):
                try parser.consume(&input)
            case let .second(parser):
                try parser.consume(&input)
            }
        }

    }

}

struct ManyOf<Element, Starter, Separator, Terminator>: Parser where Element: Parser, Starter: Parser<Void>, Separator: Parser<Void>, Terminator: Parser<Void> {

    init(
        @ParserBuilder _ element: () -> Element
    ) where Starter == Always<Void>, Separator == Always<Void>, Terminator == Always<Void> {
        self.init(element, 0, nil)
    }

    init(
        atLeast minimum: Int,
        @ParserBuilder _ element: () -> Element
    ) where Starter == Always<Void>, Separator == Always<Void>, Terminator == Always<Void> {
        self.init(element, minimum, nil)
    }

    init(
        upTo maximum: Int,
        @ParserBuilder _ element: () -> Element
    ) where Starter == Always<Void>, Separator == Always<Void>, Terminator == Always<Void> {
        self.init(element, 0, maximum)
    }

    init(
        _ range: ClosedRange<Int>,
        @ParserBuilder _ element: () -> Element
    ) where Starter == Always<Void>, Separator == Always<Void>, Terminator == Always<Void> {
        self.init(element, range.lowerBound, range.upperBound)
    }

    init(
        exactly count: Int,
        @ParserBuilder _ element: () -> Element
    ) where Starter == Always<Void>, Separator == Always<Void>, Terminator == Always<Void> {
        self.init(element, count, count)
    }

    func startingWith<NewStarter>(
        @ParserBuilder newStarter: () -> NewStarter
    ) -> ManyOf<Element, NewStarter, Separator, Terminator> where Starter == Always<Void>, NewStarter: Parser<Void> {
        .init(
            element,
            newStarter(),
            separator,
            terminator,
            minimum,
            maximum
        )
    }

    func separatedBy<NewSeparator>(
        @ParserBuilder newSeparator: () -> NewSeparator
    ) -> ManyOf<Element, Starter, NewSeparator, Terminator> where Separator == Always<Void>, NewSeparator: Parser<Void> {
        .init(
            element,
            starter,
            newSeparator(),
            terminator,
            minimum,
            maximum
        )
    }

    func endingWith<NewTerminator>(
        @ParserBuilder newTerminator: () -> NewTerminator
    ) -> ManyOf<Element, Starter, Separator, NewTerminator> where Terminator == Always<Void>, NewTerminator: Parser<Void> {
        .init(
            element,
            starter,
            separator,
            newTerminator(),
            minimum,
            maximum
        )
    }

    private init(
        @ParserBuilder _ element: () -> Element,
        _ minimum: Int,
        _ maximum: Int?
    ) where Starter == Always<Void>, Separator == Always<Void>, Terminator == Always<Void> {
        self.init(element(), Always(), Always(), Always(), minimum, maximum)
    }

    private init(
        _ element: Element,
        _ starter: Starter,
        _ separator: Separator,
        _ terminator: Terminator,
        _ minimum: Int,
        _ maximum: Int?
    ) {
        self.element = element
        self.starter = starter
        self.separator = separator
        self.terminator = terminator
        self.minimum = minimum
        self.maximum = maximum
    }

    private let element: Element
    private let starter: Starter
    private let separator: Separator
    private let terminator: Terminator
    private let minimum: Int
    private let maximum: Int?

    func consume(_ input: inout Data) throws -> [Element.Product] {
        var rest = input
        var result = [Element.Product]()
        var count = 0
        try starter.consume(&input)
        while self.maximum.map({ count < $0 }) ?? true {
            let product: Element.Product
            do {
                product = try element.consume(&input)
            } catch {
                break
            }
            result.append(product)
//            defer { previous = input }
            count += 1
//            do {
//                try self.updateAccumulatingResult(&result, output)
//            } catch {
//                throw ParsingError.wrap(error, from: previous, to: input)
//            }

            rest = input
            do {
                try separator.consume(&input)
            } catch {
                break
            }
//            try withUnsafePointer(to: input) { inputPtr in
//                try withUnsafePointer(to: previous) { previousPtr in
//                    if memcmp(inputPtr, previousPtr, MemoryLayout<Element.Input>.size) == 0 {
//                        throw ParsingError.failed(
//                            "expected input to be consumed",
//                            .init(remainingInput: input, debugDescription: "infinite loop", underlyingError: nil)
//                        )
//                    }
//                }
//            }
        }
        input = rest
//        do {
        try terminator.consume(&input)
//        } catch {
//            if let loopError {
//                throw ParsingError.manyFailed([loopError, error], at: input)
//            } else {
//                throw error
//            }
//        }
        guard count >= minimum else {
            throw ParseError("Not enough")
//            let atLeast = self.minimum - count
//            throw ParsingError.expectedInput(
//                """
//                \(atLeast) \(count == 0 ? "" : "more ")value\(atLeast == 1 ? "" : "s") of \
//                "\(Element.Output.self)"
//                """,
//                at: rest
//            )
        }
        return result
    }

}

struct Group<T>: ParserCombinator where T: Parser {

    init(
        @ParserBuilder parsers: () -> T
    ) {
        self.parsers = parsers()
    }

    var body: some Parser<T.Product> {
        parsers
    }

    private let parsers: T

}

struct Not<T>: Parser where T: Parser {

    init(
        @ParserBuilder parsers: () -> T
    ) {
        self.parsers = parsers()
    }

    func consume(_ input: inout Data) throws {
        let original = input
        do {
            _ = try parsers.consume(&input)
        } catch {
            input = original
            return
        }
        throw ParseError("Unexpected input")
    }

    private let parsers: T

}
