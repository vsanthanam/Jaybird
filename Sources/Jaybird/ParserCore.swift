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
        _ input: UnsafeBufferPointer<UInt8>,
        _ index: inout Int
    ) throws -> Product

}

// protocol ParserCombinator: Parser {
//
//    associatedtype Body: Parser<Product>
//
//    @ParserBuilder
//    var body: Body { get }
//
// }
//
// extension ParserCombinator {
//
//    @inline(__always)
//    @inlinable
//    func consume(
//        _ input: UnsafeBufferPointer<UInt8>,
//        _ index: inout Int
//    ) throws -> Product {
//        try body.consume(input, &index)
//    }
//
// }
//
// @resultBuilder
// enum ParserBuilder {
//
//    static func buildExpression<T>(
//        _ expression: T
//    ) -> T where T: Parser {
//        expression
//    }
//
//    static func buildExpression<T>(
//        _ expression: T
//    ) -> AsVoid<T> where T: Parser<Void?> {
//        AsVoid(expression)
//    }
//
//    static func buildExpression(
//        _ expression: [UInt8]
//    ) -> Swallow<Exactly<[UInt8]>> {
//        Swallow {
//            Exactly(expression)
//        }
//    }
//
//    @ParserBuilder
//    static func buildExpression(
//        _ expression: UInt8
//    ) -> Swallow<Exactly<[UInt8]>> {
//        [expression]
//
//    }
//
//    static func buildPartialBlock<T>(
//        first: T
//    ) -> T where T: Parser {
//        first
//    }
//
//    static func buildPartialBlock<each Accumulated, Next>(
//        accumulated: repeat each Accumulated,
//        next: Next
//    ) -> _Accumulate<repeat each Accumulated, Next> where repeat each Accumulated: Parser, Next: Parser {
//        .init(
//            accumulated: repeat each accumulated,
//            next: next
//        )
//    }
//
//    static func buildPartialBlock<Accumulated, Next>(
//        accumulated: Accumulated,
//        next: Next
//    ) -> _SkipAccumulated<Accumulated, Next> where Accumulated: Parser<Void>, Next: Parser {
//        _SkipAccumulated(
//            accumulated,
//            next
//        )
//    }
//
//    static func buildPartialBlock<Accumulated, Next>(
//        accumulated: Accumulated,
//        next: Next
//    ) -> _SkipNext<Accumulated, Next> where Accumulated: Parser, Next: Parser<Void> {
//        _SkipNext(
//            accumulated,
//            next
//        )
//    }
//
//    static func buildPartialBlock<Accumulated, Next>(
//        accumulated: Accumulated,
//        next: Next
//    ) -> _SkipBoth<Accumulated, Next> where Accumulated: Parser<Void>, Next: Parser<Void> {
//        _SkipBoth(
//            accumulated,
//            next
//        )
//    }
//
//    static func buildPartialBlock<Accumulated, Next>(
//        accumulated: Accumulated,
//        next: Next
//    ) -> _SkipAccumulated<AsVoid<Accumulated>, Next> where Accumulated: Parser<Void?>, Next: Parser {
//        _SkipAccumulated(
//            AsVoid(accumulated),
//            next
//        )
//    }
//
//    static func buildPartialBlock<Accumulated, Next>(
//        accumulated: Accumulated,
//        next: Next
//    ) -> _SkipNext<Accumulated, AsVoid<Next>> where Accumulated: Parser, Next: Parser<Void?> {
//        _SkipNext(
//            accumulated,
//            AsVoid(next)
//        )
//    }
//
//    static func buildPartialBlock<Accumulated, Next>(
//        accumulated: Accumulated,
//        next: Next
//    ) -> _SkipBoth<AsVoid<Accumulated>, AsVoid<Next>> where Accumulated: Parser<Void?>, Next: Parser<Void?> {
//        _SkipBoth(
//            AsVoid(accumulated),
//            AsVoid(next)
//        )
//    }
//
//    static func buildEither<First, Second>(
//        first component: First
//    ) -> _Either<First, Second> where First: Parser, Second: Parser, First.Product == Second.Product {
//        .first(component)
//    }
//
//    static func buildEither<First, Second>(
//        second component: Second
//    ) -> _Either<First, Second> where First: Parser, Second: Parser, First.Product == Second.Product {
//        .second(component)
//
//    }
//
//    @ParserBuilder
//    static func buildOptional<T>(
//        _ component: T?
//    ) -> _Either<Map<T, T.Product?>, Always<T.Product?>> where T: Parser {
//        if let component {
//            Map(component) { value in T.Product?.some(value) }
//        } else {
//            Always(T.Product?.none)
//        }
//    }
//
//    static func buildArray<Element>(
//        _ components: [Element]
//    ) -> _List<Element> where Element: Parser {
//        .init(components)
//    }
//
//    struct _Accumulate<each Accumulated, Next>: Parser where repeat each Accumulated: Parser, Next: Parser {
//
//        init(
//            accumulated: repeat each Accumulated,
//            next: Next
//        ) {
//            self.accumulated = (repeat (each accumulated))
//            self.next = next
//        }
//
//        @inline(__always)
//        @inlinable
//        func consume(
//            _ input: UnsafeBufferPointer<UInt8>,
//            _ index: inout Int
//        ) throws -> (repeat (each Accumulated).Product, Next.Product) {
//            try (repeat (each accumulated).consume(input, &index), next.consume(input, &index))
//        }
//
//        private let accumulated: (repeat (each Accumulated))
//        private let next: Next
//
//    }
//
//    struct _SkipAccumulated<Accumulated, Next>: Parser where Accumulated: Parser<Void>, Next: Parser {
//
//        init(
//            _ accumulated: Accumulated,
//            _ next: Next
//        ) {
//            self.accumulated = accumulated
//            self.next = next
//        }
//
//        @inline(__always)
//        @inlinable
//        func consume(
//            _ input: UnsafeBufferPointer<UInt8>,
//            _ index: inout Int
//        ) throws -> Next.Product {
//            try accumulated.consume(input, &index)
//            return try next.consume(input, &index)
//        }
//
//        private let accumulated: Accumulated
//        private let next: Next
//
//    }
//
//    struct _SkipNext<Accumulated, Next>: Parser where Accumulated: Parser, Next: Parser<Void> {
//
//        init(
//            _ accumulated: Accumulated,
//            _ next: Next
//        ) {
//            self.accumulated = accumulated
//            self.next = next
//        }
//
//        @inline(__always)
//        @inlinable
//        func consume(
//            _ input: UnsafeBufferPointer<UInt8>,
//            _ index: inout Int
//        ) throws -> Accumulated.Product {
//            let result = try accumulated.consume(input, &index)
//            try next.consume(input, &index)
//            return result
//        }
//
//        private let accumulated: Accumulated
//        private let next: Next
//
//    }
//
//    struct _SkipBoth<Accumulated, Next>: Parser where Accumulated: Parser<Void>, Next: Parser<Void> {
//
//        init(
//            _ accumulated: Accumulated,
//            _ next: Next
//        ) {
//            self.accumulated = accumulated
//            self.next = next
//        }
//
//        @inline(__always)
//        @inlinable
//        func consume(
//            _ input: UnsafeBufferPointer<UInt8>,
//            _ index: inout Int
//        ) throws {
//            try accumulated.consume(input, &index)
//            try next.consume(input, &index)
//        }
//
//        private let accumulated: Accumulated
//        private let next: Next
//
//    }
//
//    enum _Either<First, Second>: Parser where First: Parser, Second: Parser, First.Product == Second.Product {
//
//        case first(First)
//        case second(Second)
//
//        @inline(__always)
//        @inlinable
//        func consume(
//            _ input: UnsafeBufferPointer<UInt8>,
//            _ index: inout Int
//        ) throws -> First.Product {
//            switch self {
//            case let .first(parser):
//                try parser.consume(input, &index)
//            case let .second(parser):
//                try parser.consume(input, &index)
//            }
//        }
//
//    }
//
//    struct _List<Element>: Parser where Element: Parser {
//
//        init(_ list: [Element]) {
//            self.list = list
//        }
//
//        private let list: [Element]
//
//        @inline(__always)
//        @inlinable
//        func consume(
//            _ input: UnsafeBufferPointer<UInt8>,
//            _ index: inout Int
//        ) throws -> [Element.Product] {
//            try list
//                .map { parser in
//                    try parser.consume(input, &index)
//                }
//        }
//
//    }
//
// }
//
// extension Parser {
//
//    func map<NewProduct>(
//        _ fn: @Sendable @escaping (Product) throws -> NewProduct
//    ) -> some Parser<NewProduct> {
//        Map(self, fn)
//    }
//
// }
//
// struct Map<Upstream, Product>: Parser where Upstream: Parser {
//
//    init(
//        _ upstream: Upstream,
//        _ fn: @Sendable @escaping (Upstream.Product) throws -> Product
//    ) {
//        self.upstream = upstream
//        self.fn = fn
//    }
//
//    @inline(__always)
//    @inlinable
//    func consume(
//        _ input: UnsafeBufferPointer<UInt8>,
//        _ index: inout Int
//    ) throws -> Product {
//        try fn(upstream.consume(input, &index))
//    }
//
//    private let upstream: Upstream
//    private let fn: @Sendable (Upstream.Product) throws -> Product
//
// }
//
// struct AsVoid<Upstream>: ParserCombinator where Upstream: Parser {
//
//    init(
//        _ upstream: Upstream
//    ) {
//        self.upstream = upstream
//    }
//
//    var body: some Parser<Void> {
//        upstream
//            .map { _ in }
//    }
//
//    private let upstream: Upstream
//
// }
//

//
// struct Exactly<Product>: Parser {
//
//    init(
//        _ match: [UInt8],
//        fn: @Sendable @escaping ([UInt8]) throws -> Product
//    ) {
//        self.match = match
//        self.fn = fn
//    }
//
//    init(
//        _ match: [UInt8]
//    ) where Product == [UInt8] {
//        self.init(match) { bytes in bytes }
//    }
//
//    @inline(__always)
//    @inlinable
//    func consume(
//        _ input: UnsafeBufferPointer<UInt8>,
//        _ index: inout Int
//    ) throws -> Product {
//        let matchLength = match.count
//
//        guard input.count - index >= matchLength else {
//            throw ParseError("Unexpected end of input")
//        }
//
//        for offset in 0..<matchLength {
//            if input[index + offset] != match[offset] {
//                throw ParseError("Unexpected input in exactly parser")
//            }
//        }
//
//        index += matchLength
//
//        return try fn(match)
//    }
//
//    private let match: [UInt8]
//    private let fn: @Sendable ([UInt8]) throws -> Product
//
// }
//
// struct Swallow<T>: ParserCombinator where T: Parser {
//
//    init(@ParserBuilder parser: () -> T) {
//        self.parser = parser()
//    }
//
//    var body: some Parser<Void> {
//        parser
//            .map { _ in }
//    }
//
//    private let parser: T
//
// }
//
// struct Always<Product>: Parser where Product: Sendable {
//
//    init() where Product == Void {
//        self.init(())
//    }
//
//    init(_ value: Result<Product, any Error>) {
//        self.value = value
//    }
//
//    init(_ fn: () throws -> Product) {
//        self.init(.init(catching: fn))
//    }
//
//    init(_ product: Product) {
//        self.init { product }
//    }
//
//    init(_ error: any Error) {
//        self.init { throw error }
//    }
//
//    @inline(__always)
//    @inlinable
//    func consume(
//        _ input: UnsafeBufferPointer<UInt8>,
//        _ index: inout Int
//    ) throws -> Product {
//        try value.get()
//    }
//
//    private let value: Result<Product, any Error>
//
// }
//
// struct Skip: ParserCombinator {
//
//    init() {}
//
//    var body: some Parser<Void> {
//        Always()
//    }
//
// }
//
// struct AnyParser<Product>: Parser {
//
//    init(_ parser: some Parser<Product>) {
//        self._consume = parser.consume
//    }
//
//    @inline(__always)
//    @inlinable
//    func consume(
//        _ input: UnsafeBufferPointer<UInt8>,
//        _ index: inout Int
//    ) throws -> Product {
//        try _consume(input, &index)
//    }
//
//    private let _consume: @Sendable (UnsafeBufferPointer<UInt8>, inout Int) throws -> Product
//
// }
//
// struct OneOf<These, Product>: ParserCombinator where These: Parser<Product> {
//
//    init(
//        @OneOfBuilder<Product> these parsers: () -> These
//    ) {
//        these = parsers()
//    }
//
//    var body: some Parser<Product> {
//        these
//    }
//
//    private let these: These
//
// }
//
// @resultBuilder
// enum OneOfBuilder<Product> {
//
//    static func buildExpression(
//        _ expression: [UInt8]
//    ) -> Exactly<[UInt8]> where Product == [UInt8] {
//        Exactly(expression)
//    }
//
//    @OneOfBuilder
//    static func buildExpression(
//        _ expression: UInt8
//    ) -> Exactly<[UInt8]> where Product == [UInt8] {
//        [expression]
//    }
//
//    static func buildExpression<T>(
//        _ expression: T
//    ) -> T where T: Parser<Product> {
//        expression
//    }
//
//    static func buildPartialBlock<T>(
//        first: T
//    ) -> T where T: Parser<Product> {
//        first
//    }
//
//    static func buildPartialBlock<Accumulated, Next>(
//        accumulated: Accumulated,
//        next: Next
//    ) -> _OneOfThese<Accumulated, Next> where Accumulated: Parser<Product>, Next: Parser<Product> {
//        .init(accumulated, next)
//    }
//
//    static func buildEither<First, Second>(
//        first component: First
//    ) -> _Either<First, Second> where First: Parser<Product>, Second: Parser<Product> {
//        .first(component)
//    }
//
//    static func buildEither<First, Second>(
//        second component: Second
//    ) -> _Either<First, Second> where First: Parser<Product>, Second: Parser<Product> {
//        .second(component)
//    }
//
//    struct _OneOfThese<First, Second>: Parser where First: Parser, Second: Parser, First.Product == Second.Product {
//
//        init(
//            _ first: First,
//            _ second: Second
//        ) {
//            self.first = first
//            self.second = second
//        }
//
//        @inline(__always)
//        @inlinable
//        func consume(
//            _ input: UnsafeBufferPointer<UInt8>,
//            _ index: inout Int
//        ) throws -> First.Product {
//            var trialIndex = index
//            if let result = try? first.consume(input, &trialIndex) {
//                index = trialIndex
//                return result
//            }
//            return try second.consume(input, &index)
//        }
//
//        private let first: First
//        private let second: Second
//    }
//
//    enum _Either<First, Second>: Parser where First: Parser, Second: Parser, First.Product == Second.Product {
//
//        case first(First)
//        case second(Second)
//
//        @inline(__always)
//        @inlinable
//        func consume(
//            _ input: UnsafeBufferPointer<UInt8>,
//            _ index: inout Int
//        ) throws -> First.Product {
//            switch self {
//            case let .first(parser):
//                try parser.consume(input, &index)
//            case let .second(parser):
//                try parser.consume(input, &index)
//            }
//        }
//
//    }
//
// }
//
// struct ManyOf<Element, Starter, Separator, Terminator>: Parser where Element: Parser, Starter: Parser<Void>, Separator: Parser<Void>, Terminator: Parser<Void> {
//
//    init(
//        capacity: Int = 16,
//        @ParserBuilder _ element: () -> Element
//    ) where Starter == Always<Void>, Separator == Always<Void>, Terminator == Always<Void> {
//        self.init(element, 0, nil, capacity)
//    }
//
//    init(
//        atLeast minimum: Int,
//        capacity: Int = 16,
//        @ParserBuilder _ element: () -> Element
//    ) where Starter == Always<Void>, Separator == Always<Void>, Terminator == Always<Void> {
//        self.init(element, minimum, nil, capacity)
//    }
//
//    init(
//        upTo maximum: Int,
//        capacity: Int = 16,
//        @ParserBuilder _ element: () -> Element
//    ) where Starter == Always<Void>, Separator == Always<Void>, Terminator == Always<Void> {
//        self.init(element, 0, maximum, capacity)
//    }
//
//    init(
//        _ range: ClosedRange<Int>,
//        capacity: Int = 16,
//        @ParserBuilder _ element: () -> Element
//    ) where Starter == Always<Void>, Separator == Always<Void>, Terminator == Always<Void> {
//        self.init(element, range.lowerBound, range.upperBound, capacity)
//    }
//
//    init(
//        exactly count: Int,
//        capacity: Int = 16,
//        @ParserBuilder _ element: () -> Element
//    ) where Starter == Always<Void>, Separator == Always<Void>, Terminator == Always<Void> {
//        self.init(element, count, count, capacity)
//    }
//
//    func startingWith<NewStarter>(
//        @ParserBuilder newStarter: () -> NewStarter
//    ) -> ManyOf<Element, NewStarter, Separator, Terminator> where Starter == Always<Void>, NewStarter: Parser<Void> {
//        .init(
//            element,
//            newStarter(),
//            separator,
//            terminator,
//            minimum,
//            maximum,
//            reserveCapacity
//        )
//    }
//
//    func separatedBy<NewSeparator>(
//        @ParserBuilder newSeparator: () -> NewSeparator
//    ) -> ManyOf<Element, Starter, NewSeparator, Terminator> where Separator == Always<Void>, NewSeparator: Parser<Void> {
//        .init(
//            element,
//            starter,
//            newSeparator(),
//            terminator,
//            minimum,
//            maximum,
//            reserveCapacity
//        )
//    }
//
//    func endingWith<NewTerminator>(
//        @ParserBuilder newTerminator: () -> NewTerminator
//    ) -> ManyOf<Element, Starter, Separator, NewTerminator> where Terminator == Always<Void>, NewTerminator: Parser<Void> {
//        .init(
//            element,
//            starter,
//            separator,
//            newTerminator(),
//            minimum,
//            maximum,
//            reserveCapacity
//        )
//    }
//
//    private init(
//        @ParserBuilder _ element: () -> Element,
//        _ minimum: Int,
//        _ maximum: Int?,
//        _ reserveCapacity: Int
//    ) where Starter == Always<Void>, Separator == Always<Void>, Terminator == Always<Void> {
//        self.init(element(), Always(), Always(), Always(), minimum, maximum, reserveCapacity)
//    }
//
//    private init(
//        _ element: Element,
//        _ starter: Starter,
//        _ separator: Separator,
//        _ terminator: Terminator,
//        _ minimum: Int,
//        _ maximum: Int?,
//        _ reserveCapacity: Int
//    ) {
//        self.element = element
//        self.starter = starter
//        self.separator = separator
//        self.terminator = terminator
//        self.minimum = minimum
//        self.maximum = maximum
//        self.reserveCapacity = reserveCapacity
//    }
//
//    private let element: Element
//    private let starter: Starter
//    private let separator: Separator
//    private let terminator: Terminator
//    private let minimum: Int
//    private let maximum: Int?
//    private let reserveCapacity: Int
//
//    @inline(__always)
//    @inlinable
//    func consume(
//        _ input: UnsafeBufferPointer<UInt8>,
//        _ index: inout Int
//    ) throws -> [Element.Product] {
//        var result = [Element.Product]()
//        result.reserveCapacity(reserveCapacity) // <-- reserve up front!
//
//        var count = 0
//        try starter.consume(input, &index)
//
//        var lastSuccessfulIndex = index
//
//        while maximum.map({ count < $0 }) ?? true {
//            do {
//                let product = try element.consume(input, &index)
//                result.append(product)
//                count += 1
//                lastSuccessfulIndex = index
//
//                do {
//                    try separator.consume(input, &index)
//                } catch {
//                    break
//                }
//            } catch {
//                break
//            }
//        }
//
//        index = lastSuccessfulIndex
//
//        try terminator.consume(input, &index)
//
//        guard count >= minimum else {
//            throw ParseError("Not enough elements")
//        }
//
//        return result
//    }
//
// }
//
// struct Group<T>: ParserCombinator where T: Parser {
//
//    init(
//        @ParserBuilder parsers: () -> T
//    ) {
//        self.parsers = parsers()
//    }
//
//    var body: some Parser<T.Product> {
//        parsers
//    }
//
//    private let parsers: T
//
// }
//
// struct Not<T>: Parser where T: Parser {
//
//    init(
//        @ParserBuilder parsers: () -> T
//    ) {
//        self.parsers = parsers()
//    }
//
//    @inline(__always)
//    @inlinable
//    func consume(
//        _ input: UnsafeBufferPointer<UInt8>,
//        _ index: inout Int
//    ) throws {
//        var trialIndex = index
//        if let _ = try? parsers.consume(input, &trialIndex) {
//            throw ParseError("Unexpected input in not parser")
//        }
//        return
//    }
//
//    private let parsers: T
// }
//
// struct Maybe<T>: Parser where T: Parser {
//
//    init(@ParserBuilder parser: () -> T) {
//        self.parser = parser()
//    }
//
//    @inline(__always)
//    @inlinable
//    func consume(
//        _ input: UnsafeBufferPointer<UInt8>,
//        _ index: inout Int
//    ) throws -> T.Product? {
//        let original = index
//        do {
//            return try parser.consume(input, &index)
//        } catch {
//            index = original
//            return nil
//        }
//    }
//
//    private let parser: T
// }
