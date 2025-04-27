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
        .package(url: "https://github.com/ordo-one/package-benchmark", from: "1.0.0")
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
                .copy("benchmark5mb.json"),
                .copy("benchmark50mb.json")
            ],
            plugins: [
                .plugin(name: "BenchmarkPlugin", package: "package-benchmark")
            ]
        )
    ]
)
