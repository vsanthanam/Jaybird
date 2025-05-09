# ``JSON``

A typed API for interacting with JSON objects in Swift

## Topics

### Initializers

- ``init(_:)-(JSONEncodable)``
- ``init(fields:)``

### JSON Subtypes

- ``Literal``
- ``Numeric``
- ``Object``
- ``Array``

### Deserialization

- ``init(_:)-(Data)``
- ``init(_:)-([UInt8])``
- ``init(deserializing:)``
- ``Deserializer``

### Serialization

- ``serialize()``
- ``stringify()``
- ``Serializer``

### Converting to Swift Types

- ``literalValue``
- ``boolValue``
- ``isNull``
- ``numericValue``
- ``intValue``
- ``doubleValue``
- ``stringValue``
- ``arrayValue``
- ``objectValue``

### Subscripting

- ``value(atIndex:)-(BinaryInteger)``
- ``value(atIndex:)-(Index)``
- ``value(forKey:)-(StringProtocol)``
- ``value(forKey:)-(Key)``
- ``value(forSubscript:)-(Subscript)``
- ``value(forSubscript:)-(JSONSubscriptConvertible)``
- ``value(atPath:)-([Subscript])``
- ``value(atPath:)-(PathComponent)``
- ``setValue(_:atIndex:)-(_,BinaryInteger)``
- ``setValue(_:atIndex:)-(_,Index)``
- ``setValue(_:forKey:)-(_,StringProtocol)``
- ``setValue(_:forKey:)-(_,Key)``
- ``setValue(_:forSubscript:)-(_,Subscript)``
- ``setValue(_:forSubscript:)-(_,JSONSubscriptConvertible)``
- ``subscript(_:)-(Subscript)``
- ``subscript(_:)-(JSONSubscriptConvertible)``

### Literal Support

- ``BooleanLiteralType``
- ``init(booleanLiteral:)``
- ``IntegerLiteralType``
- ``init(integerLiteral:)``
- ``FloatLiteralType``
- ``init(floatLiteral:)``
- ``StringLiteralType``
- ``init(stringLiteral:)``
- ``ArrayLiteralElement``
- ``init(arrayLiteral:)``
- ``Key``
- ``Value``
- ``init(dictionaryLiteral:)``
- ``init(nilLiteral:)``
