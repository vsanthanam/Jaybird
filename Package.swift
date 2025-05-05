// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Jaybird",
    platforms: [
        .macOS(.v15)
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
                "Parser"
            ]
        ),
        .target(
            name: "Parser",
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
                .copy("benchmark-2kb.json"),
                .copy("benchmark-2kb-pretty.json"),
                .copy("benchmark-50kb.json"),
                .copy("benchmark-50kb-pretty.json"),
                .copy("benchmark-200kb.json"),
                .copy("benchmark-200kb-pretty.json"),
                .copy("benchmark-500kb.json"),
                .copy("benchmark-500kb-pretty.json"),
                .copy("benchmark-2mb.json"),
                .copy("benchmark-2mb-pretty.json"),
                .copy("benchmark-5mb.json"),
                .copy("benchmark-5mb-pretty.json"),
                .copy("benchmark-50mb.json"),
                .copy("benchmark-50mb-pretty.json"),
                .copy("benchmark-strings.json"),
                .copy("benchmark-numeric.json"),
                .copy("benchmark-integers.json"),
            ],
            plugins: [
                .plugin(name: "BenchmarkPlugin", package: "package-benchmark")
            ]
        )
    ]
)
