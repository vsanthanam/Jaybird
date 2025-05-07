//
//  File.swift
//  Jaybird
//
//  Created by Varun Santhanam on 5/6/25.
//

extension JSON {
    
    @resultBuilder
    public enum Builder {
        
        public static func buildExpression(
            _ expression: (String, JSON)
        ) -> [(String, JSON)] {
            [expression]
        }
        
        public static func buildExpression(
            _ expression: [(String, JSON)]
        ) -> [(String, JSON)] {
            expression
        }
        
        public static func buildExpression(
            _ expression: [String: JSON]
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
        
        public static func buildArray(
            _ components: [[(String, JSON)]]
        ) -> [(String, JSON)] {
            components.flatMap(\.self)
        }
        
        public static func buildFinalResult(
            _ component: [(String, JSON)]
        ) -> JSON {
            let dict = component.reduce(into: [String: JSON]()) { prev, pair in
                let (key, value) = pair
                prev[key] = value
            }
            return JSON(dict)
        }
        
    }
    
}
