# Jaybird

A blazing fast library for working with JSON in Swift

## Overview

Jaybird is an ultra-high performance JSON library for Swift that delivers exceptional speed and efficiency through its C-based implementation while providing the type safety and ergonomics you expect from a modern Swift-first API.

- **Speed**: Up to 30% faster parsing than Foundation's JSON parser
- **Memory Footprint**: Uses up to 93% less memory than standard parsers
- **Type Safety**: Fully typed Swift interface makes JSON handling safer and more intuitive
- **C Parser Implementation**: Core parsing engine written in C with vectorized instructions for maximum speed and efficiency
- **Battle Tested**: Comprehensive benchmark & test suites ensures consistent performance across all scenarios without sacrificing correctness

## Performance Highlights

Compared to Foundation's JSON implementation, Jaybird delivers:

- **27-36% faster** parsing times
- **36-56% higher** throughput
- **88-94% lower** memory usage
- **27-30% fewer** memory allocations
- **25-29% fewer** CPU instructions

Don't just take our word for it - check out the detailed benchmark results in the `Benchmarks/Results/*.md` files

## Getting Started

Add Jaybird to your Swift project:

```swift
dependencies: [
    .package(url: "https://github.com/vsanthanam/Jaybird", from: "0.0.0")
]
```

## License

TODO
