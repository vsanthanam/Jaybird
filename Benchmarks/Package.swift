// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Benchmarks",
    platforms: [
        .macOS(.v13)
    ],
    dependencies: [
        .package(
            url: "https://github.com/ordo-one/package-benchmark",
            from: "1.0.0"
        ),
        .package(name: "Jaybird", path: "../")
    ],
    targets: [
        .executableTarget(
            name: "JaybirdBenchmark",
            dependencies: [
                .product(name: "Benchmark", package: "package-benchmark"),
                .product(name: "Jaybird", package: "Jaybird"),
            ],
            path: "JaybirdBenchmark",
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
            plugins: [
                .plugin(name: "BenchmarkPlugin", package: "package-benchmark")
            ]
        )
    ]
)
