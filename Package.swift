// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Jaybird",
    platforms: [
        .macOS(.v13),
        .macCatalyst(.v16),
        .iOS(.v16),
        .watchOS(.v9),
        .tvOS(.v16),
        .visionOS(.v1)
    ],
    products: [
        .library(
            name: "Jaybird",
            targets: [
                "Jaybird"
            ]
        )
    ],
    dependencies: [
        .package(
            url: "https://github.com/ordo-one/package-benchmark",
            from: "1.0.0"
        )
    ],
    targets: [
        .target(
            name: "Jaybird",
            dependencies: [
                "JaybirdC"
            ]
        ),
        .target(
            name: "JaybirdC",
            publicHeadersPath: "."
        ),
        .testTarget(
            name: "JaybirdTests",
            dependencies: [
                "Jaybird"
            ]
        ),
        .executableTarget(
            name: "JaybirdBenchmark",
            dependencies: [
                .product(name: "Benchmark", package: "package-benchmark"),
                "Jaybird"
            ],
            path: "Benchmarks/JaybirdBenchmark",
            resources: [
                .copy("benchmark-micro.json"),
                .copy("benchmark-micro-pretty.json"),
                .copy("benchmark-64kb.json"),
                .copy("benchmark-64kb-pretty.json"),
                .copy("benchmark-256kb.json"),
                .copy("benchmark-256kb-pretty.json"),
                .copy("benchmark-512kb.json"),
                .copy("benchmark-512kb-pretty.json"),
                .copy("benchmark-1mb.json"),
                .copy("benchmark-1mb-pretty.json"),
                .copy("benchmark-5mb.json"),
                .copy("benchmark-5mb-pretty.json"),
                .copy("benchmark-strings.json"),
                .copy("benchmark-numeric.json"),
                .copy("benchmark-integers.json"),
            ],
            swiftSettings: [
                .define("BENCHMARK_DISABLE_JEMALLOC")
            ],
            plugins: [
                .plugin(name: "BenchmarkPlugin", package: "package-benchmark")
            ]
        )
    ]
)
