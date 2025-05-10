// Jaybird
// Builder.swift
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

@available(macOS 13.0, macCatalyst 16.0, iOS 16.0, watchOS 9.0, tvOS 16.0, visionOS 1.0, *)
extension JSON {

    @resultBuilder
    public enum Builder {

        public static func buildExpression(
            _ expression: (String, JSON)
        ) -> [(String, JSON)] {
            [expression]
        }

        public static func buildExpression<T>(
            _ expression: (String, T)
        ) -> [(String, JSON)] where T: JSONEncodable {
            let (key, value) = expression
            return [(key, JSON(value))]
        }

        public static func buildExpression(
            _ expression: [(String, JSON)]
        ) -> [(String, JSON)] {
            expression
        }

        public static func buildExpression(
            _ expression: Object
        ) -> [(String, JSON)] {
            expression.map(\.self)
        }

        public static func buildBlock(
            _ components: [(String, JSON)]
        ) -> [(String, JSON)] {
            components
        }

        public static func buildBlock(
            _ components: [(String, JSON)]...
        ) -> [(String, JSON)] {
            components.flatMap(\.self)
        }

        public static func buildEither(
            first component: [(String, JSON)]
        ) -> [(String, JSON)] {
            component
        }

        public static func buildEither(
            second component: [(String, JSON)]
        ) -> [(String, JSON)] {
            component
        }

        public static func buildOptional(_ component: [(JSON.String, JSON)]?) -> [(JSON.String, JSON)] {
            component ?? []
        }

        public static func buildArray(
            _ components: [[(String, JSON)]]
        ) -> [(String, JSON)] {
            components.flatMap(\.self)
        }

        public static func buildFinalResult(
            _ component: [(String, JSON)]
        ) -> JSON {
            let dict = component.reduce(into: Object()) { prev, pair in
                let (key, value) = pair
                prev[key] = value
            }
            return JSON(dict)
        }

    }

}
