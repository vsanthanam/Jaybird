// Jaybird
// JSONParser.swift
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

extension JSON {

    struct Parser {

        func callAsFunction(_ data: Data) throws -> JSON {
            try parse(data)
        }

        func parse(_ data: Data) throws -> JSON {
            var input = data
            let parser = JSONParser()
            let result = try parser.consume(&input)
            guard input.isEmpty else {
                throw ParseError("Unexpected input")
            }
            return result
        }

    }

}

struct JSONParser: ParserCombinator {

    init(isRoot: Bool = false) {
        self.isRoot = isRoot
    }

    let isRoot: Bool

    var body: some Parser<JSON> {
        if isRoot {
            ObjectParser()
                .map(JSON.init)
        } else {
            OneOf {
                ObjectParser()
                    .map(JSON.init)
                ArrayParser()
                    .map(JSON.init)
                LiteralParser()
                    .map(JSON.init)
                StringParser()
                    .map(JSON.init)
                NumberParser()
                    .map(JSON.init)
            }
        }
    }

}

struct LiteralParser: ParserCombinator {

    var body: some Parser<JSON.Literal> {
        OneOf {
            NullParser()
            TrueParser()
            FalseParser()
        }
    }

}

struct ArrayParser: ParserCombinator {

    var body: some Parser<[JSON]> {
        ManyOf {
            JSONParser()
        }
        .startingWith {
            UInt8.leftStraightBracket
            Whitespace()
        }
        .separatedBy {
            Whitespace()
            UInt8.comma
            Whitespace()
        }
        .endingWith {
            Whitespace()
            UInt8.rightStraightBracket
        }
    }

}

struct ObjectParser: ParserCombinator {

    var body: some Parser<[String: JSON]> {
        ManyOf {
            StringParser()
            Whitespace()
            UInt8.colon
            Whitespace()
            JSONParser()
        }
        .startingWith {
            UInt8.leftCurlyBracket
            Whitespace()
        }
        .separatedBy {
            Whitespace()
            UInt8.comma
            Whitespace()
        }
        .endingWith {
            Whitespace()
            UInt8.rightCurlyBracket
        }
        .map { pairs in
            pairs.reduce(into: [String:JSON]()) { result, pair in
                let (key, value) = pair
                result[key] = value
            }
        }
    }

}

struct StringParser: Parser {

    func consume(_ input: inout Data) throws -> String {
        // Start with double quote
        guard input.first == UInt8.doubleQuote else {
            throw ParseError("Expected string to start with double quote")
        }
        input.removeFirst()

        var result = ""
        var isEscaped = false

        while !input.isEmpty {
            let byte = input.removeFirst()

            if isEscaped {
                switch byte {
                case UInt8.doubleQuote:
                    result.append("\"")
                case UInt8.backslash:
                    result.append("\\")
                case UInt8.slash:
                    result.append("/")
                case UInt8.b:
                    result.append("\u{0008}") // backspace
                case UInt8.f:
                    result.append("\u{000C}") // formfeed
                case UInt8.n:
                    result.append("\n")
                case UInt8.r:
                    result.append("\r")
                case UInt8.t:
                    result.append("\t")
                case UInt8.u:
                    // Parse 4 hex digits
                    guard input.count >= 4 else {
                        throw ParseError("Incomplete Unicode escape sequence")
                    }
                    let hexString = String(bytes: input.prefix(4), encoding: .ascii) ?? ""
                    guard let codePoint = UInt32(hexString, radix: 16) else {
                        throw ParseError("Invalid Unicode escape sequence")
                    }
                    input.removeFirst(4)

                    if codePoint >= 0xD800, codePoint <= 0xDBFF {
                        // High surrogate - expect low surrogate
                        guard input.count >= 6 else {
                            throw ParseError("Incomplete surrogate pair")
                        }
                        guard input.removeFirst() == UInt8.backslash,
                              input.removeFirst() == UInt8.u else {
                            throw ParseError("Expected low surrogate")
                        }
                        let lowHexString = String(bytes: input.prefix(4), encoding: .ascii) ?? ""
                        guard let lowCodePoint = UInt32(lowHexString, radix: 16),
                              lowCodePoint >= 0xDC00, lowCodePoint <= 0xDFFF else {
                            throw ParseError("Invalid low surrogate")
                        }
                        input.removeFirst(4)

                        // Combine surrogate pair
                        let high = codePoint - 0xD800
                        let low = lowCodePoint - 0xDC00
                        let scalar = UInt32(high << 10 | low) + 0x10000
                        guard let unicodeScalar = UnicodeScalar(scalar) else {
                            throw ParseError("Invalid Unicode scalar")
                        }
                        result.append(Character(unicodeScalar))
                    } else {
                        guard let unicodeScalar = UnicodeScalar(codePoint) else {
                            throw ParseError("Invalid Unicode scalar")
                        }
                        result.append(Character(unicodeScalar))
                    }
                default:
                    throw ParseError("Invalid escape sequence")
                }
                isEscaped = false
            } else if byte == UInt8.backslash {
                isEscaped = true
            } else if byte == UInt8.doubleQuote {
                return result
            } else if byte >= 0x20, byte <= 0x7E {
                result.append(Character(UnicodeScalar(byte)))
            } else {
                throw ParseError("Invalid character in string")
            }
        }

        throw ParseError("Unterminated string")
    }

}

struct IntParser: Parser {

    func consume(_ input: inout Data) throws -> Int {
        var isNegative = false
        var result = 0

        // Handle optional minus sign
        if !input.isEmpty, input.first == UInt8.minus {
            isNegative = true
            input.removeFirst()
        }

        // Must have at least one digit
        guard !input.isEmpty else {
            throw ParseError("Expected digit")
        }

        // Handle first digit (can't be zero unless it's the only digit)
        let firstDigit = input.removeFirst()
        guard firstDigit >= UInt8.zero, firstDigit <= UInt8.nine else {
            throw ParseError("Expected digit")
        }

        if firstDigit == UInt8.zero {
            // If first digit is zero, it must be the only digit
            guard input.isEmpty || !(input.first! >= UInt8.zero && input.first! <= UInt8.nine) else {
                throw ParseError("Leading zeros are not allowed")
            }
            return 0
        }

        result = Int(firstDigit - UInt8.zero)

        // Parse remaining digits
        while !input.isEmpty {
            let byte = input.first!
            if byte >= UInt8.zero, byte <= UInt8.nine {
                input.removeFirst()
                result = result * 10 + Int(byte - UInt8.zero)
            } else {
                break
            }
        }

        return isNegative ? -result : result
    }

}

struct DoubleParser: Parser {

    func consume(_ input: inout Data) throws -> Double {
        var isNegative = false
        var result = 0.0
        var decimalPlaces = 0
        var exponentIsNegative = false
        var exponent = 0
        var hasExponentDigits = false

        // Handle optional minus sign
        if !input.isEmpty, input.first == UInt8.minus {
            isNegative = true
            input.removeFirst()
        }

        // Must have at least one digit
        guard !input.isEmpty else {
            throw ParseError("Expected digit")
        }

        // Handle first digit (can't be zero unless it's the only digit)
        let firstDigit = input.removeFirst()
        guard firstDigit >= UInt8.zero, firstDigit <= UInt8.nine else {
            throw ParseError("Expected digit")
        }

        if firstDigit == UInt8.zero {
            // If first digit is zero, it must be the only digit before decimal point
            guard input.isEmpty || (input.first! != UInt8.period && !(input.first! >= UInt8.zero && input.first! <= UInt8.nine)) else {
                throw ParseError("Leading zeros are not allowed")
            }
        } else {
            result = Double(firstDigit - UInt8.zero)

            // Parse remaining digits before decimal point
            while !input.isEmpty {
                let byte = input.first!
                if byte >= UInt8.zero, byte <= UInt8.nine {
                    input.removeFirst()
                    result = result * 10 + Double(byte - UInt8.zero)
                } else {
                    break
                }
            }
        }

        // Handle decimal point
        if !input.isEmpty, input.first == UInt8.period {
            input.removeFirst()

            // Parse fractional part (optional digits after decimal point)
            while !input.isEmpty {
                let byte = input.first!
                if byte >= UInt8.zero, byte <= UInt8.nine {
                    input.removeFirst()
                    result = result * 10 + Double(byte - UInt8.zero)
                    decimalPlaces += 1
                } else {
                    break
                }
            }

            // Adjust for decimal places
            if decimalPlaces > 0 {
                result /= pow(10.0, Double(decimalPlaces))
            }
        }

        // Handle exponent
        if !input.isEmpty, (input.first == UInt8.e || input.first == UInt8.E) {
            input.removeFirst()

            // Handle optional exponent sign
            if !input.isEmpty {
                if input.first == UInt8.plus {
                    input.removeFirst()
                } else if input.first == UInt8.minus {
                    exponentIsNegative = true
                    input.removeFirst()
                }
            }

            // Parse exponent (optional digits after e/E)
            while !input.isEmpty {
                let byte = input.first!
                if byte >= UInt8.zero, byte <= UInt8.nine {
                    input.removeFirst()
                    exponent = exponent * 10 + Int(byte - UInt8.zero)
                    hasExponentDigits = true
                } else {
                    break
                }
            }

            // Apply exponent if we found any exponent digits
            if hasExponentDigits {
                if exponentIsNegative {
                    result /= pow(10.0, Double(exponent))
                } else {
                    result *= pow(10.0, Double(exponent))
                }
            }
        }

        return isNegative ? -result : result
    }

}

struct NumberParser: ParserCombinator {

    var body: some Parser<JSON.Number> {
        OneOf {
            Group {
                IntParser()
                Not {
                    UInt8.period
                }
                Not {
                    UInt8.e
                }
            }
            .map(JSON.Number.init)
            DoubleParser()
                .map(JSON.Number.init)
        }
    }

}

struct Whitespace: ParserCombinator {

    var body: some Parser<Void> {
        Swallow {
            ManyOf {
                OneOf {
                    0x20
                    0x09
                    0x0A
                    0x0D
                }
            }
        }
    }

}

struct NullParser: ParserCombinator {

    var body: some Parser<JSON.Literal> {
        Exactly(Data([0x6E, 0x75, 0x6C, 0x6C]))
            .map { _ in JSON.Literal.null }
    }
}

struct TrueParser: ParserCombinator {

    var body: some Parser<JSON.Literal> {
        Exactly(Data([0x74, 0x72, 0x75, 0x65]))
            .map { _ in JSON.Literal.true }
    }

}

struct FalseParser: ParserCombinator {

    var body: some Parser<JSON.Literal> {
        Exactly(Data([0x66, 0x61, 0x6C, 0x73, 0x65]))
            .map { _ in JSON.Literal.false }
    }

}

extension UInt8 {
    static let backslash = UInt8(ascii: "\\")
    static let backspace = UInt8(ascii: "\u{0008}")
    static let colon = UInt8(ascii: ":")
    static let comma = UInt8(ascii: ",")
    static let doubleQuote = UInt8(ascii: "\"")
    static let formfeed = UInt8(ascii: "\u{000c}")
    static let leftCurlyBracket = UInt8(ascii: "{")
    static let leftStraightBracket = UInt8(ascii: "[")
    static let minus = UInt8(ascii: "-")
    static let newLine = UInt8(ascii: "\n")
    static let period = UInt8(ascii: ".")
    static let plus = UInt8(ascii: "+")
    static let `return` = UInt8(ascii: "\r")
    static let rightCurlyBracket = UInt8(ascii: "}")
    static let rightStraightBracket = UInt8(ascii: "]")
    static let slash = UInt8(ascii: "/")
    static let space = UInt8(ascii: " ")
    static let tab = UInt8(ascii: "\t")

    static let a = UInt8(ascii: "a")
    static let b = UInt8(ascii: "b")
    static let c = UInt8(ascii: "c")
    static let d = UInt8(ascii: "d")
    static let e = UInt8(ascii: "e")
    static let f = UInt8(ascii: "f")
    static let l = UInt8(ascii: "l")
    static let n = UInt8(ascii: "n")
    static let r = UInt8(ascii: "r")
    static let s = UInt8(ascii: "s")
    static let t = UInt8(ascii: "t")
    static let u = UInt8(ascii: "u")

    static let A = UInt8(ascii: "A")
    static let B = UInt8(ascii: "B")
    static let C = UInt8(ascii: "C")
    static let D = UInt8(ascii: "D")
    static let E = UInt8(ascii: "E")
    static let F = UInt8(ascii: "F")

    static let zero = UInt8(ascii: "0")
    static let one = UInt8(ascii: "1")
    static let two = UInt8(ascii: "2")
    static let three = UInt8(ascii: "3")
    static let four = UInt8(ascii: "4")
    static let five = UInt8(ascii: "5")
    static let six = UInt8(ascii: "6")
    static let seven = UInt8(ascii: "7")
    static let eight = UInt8(ascii: "8")
    static let nine = UInt8(ascii: "9")
}
