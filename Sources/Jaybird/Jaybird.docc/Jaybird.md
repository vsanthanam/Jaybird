# ``Jaybird``

A blazing fast library for working with JSON in Swift

## Overview

JSON is a library for working with JSON objects in Swift. 

It contains the following APIs:

- A an ergonomic Swift value type used to represent JSON objects
- APIs to easily create and mutate instances of this type directly in Swift
- APIs to deserialize UTF-8 encoded data or Swift Strings into the provided Swift representation.
- Methods to serializing the Swift JSON representation into Swift strings or UTF-8 encoded data
- APIs support encoding and decoding other Swift Types to and from a JSON representation.

### Representing JSON in Swift

A legal JSON value [must be one of the following](https://www.rfc-editor.org/rfc/rfc8259):

- An array: A comma separated list of other legal JSON values, enclosed with square brackets
- An object: A comma separated list of string keys and their JSON value members, enclosed with curly brackets
- A number: A numeric value represented in base 10 using decimal digits.
- A string: A character sequence enclosed with quotation marks.
- One of three legal literal values: `true`, `false`, or `null`

Because of these rules, an enumeration with associated types is an ideal way to model JSON objects in Swift:

```swift
enum JSON {
    case array([JSON])
    case object([String: JSON])
    case numeric(Numeric)
    case string(String)
    case literal(Literal)
}
```

Given the following JSON:

```json
{
    "first_name": "Steve",
    "last_name": "Jobs",
    "founded_apple": true,
    "patent_count": 317
}
```

You could use the enumeration to model the same data like this:

```swift
import Jaybird

let steve = JSON.object(
    [
        "first_name": .string("Steve"),
        "last_name": .string("Jobs"),
        "founded_apple": .literal(.true),
        "patent_count": .number(.int(317))
    ]
)
```

The enumeration is very explicit, but can lead to code that is both more cumbersome to write and more difficult to read when compared to standard JSON syntax.
To avoid these issues, you can initialize ``JSON`` using Swift literals:

```swift
import Athena

let steve: JSON = [
    "first_name": "Steve",
    "last_name": "Jobs",
    "founded_apple": true,
    "patent_count": 317
]
```

For more information, see the ``JSON`` symbol reference.

### Subscripting

You can use integers or strings as subscripts to retrieve nested JSON values. For example:

```swift
let firstName: JSON = try steve.value(forSubscript: "first_name")
```

You can also use Swift's [subscripting syntax](https://docs.swift.org/swift-book/LanguageGuide/Subscripts.html):

```swift
let firstName = steve["first_name"]
```

For more information, see <doc:Subscripting>.

### Encoding & Decoding

You can easily add support for your custom swift types by adding conformance to ``JSONEncodable`` and ``JSONDecodable``

Once implemented, you can create an instance of your type from valid ``JSON`` like this:

```swift
import Athena

struct MyType: JSONCodable { ... }

let firstInstance = MyType( ... )
let json = MyType.toJSON()
let secondInstsance = try MyType(json: json)
```

For more information, see <doc:EncodingDecoding>.

### Serialzing & Deserializing

You can easily serialize ``JSON`` data into Swift strings or UTF-8 encoded `Data`:

```swift
let string = try String(serializing: steve)
let data = try Data(serializing: steve)
```

Fore more information, see <doc:Serializing> and <doc:Deserializing>.

## Topics

### Models

- ``JSON``
- ``JSON/Number``
- ``JSON/Literal``

### Subscripting

- <doc:Subscripting>
- ``JSON/Subscript``
- ``JSON/Path``
- ``JSONSubscriptRepresentable``

### Encoding & Decoding

- <doc:EncodingDecoding>
- ``JSON/Encoder``
- ``JSON/Decoder``
- ``JSONEncodable``
- ``JSONDecodable``
- ``JSONCodable``

### Serialization

- <doc:Serializing>
- ``JSON/Serializer``
- ``JSON/Serializer/Options``

### Deserialization

- <doc:Deserializing>
- ``JSON/Deserializer``
- ``JSON/Deserializer/Options``
- ``JSON/Deserializer/EncodingDetector``

### Errors
