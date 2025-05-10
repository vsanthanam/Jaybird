// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import CompilerPluginSupport
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
        ),
        .library(
            name: "JaybirdMacros",
            targets: [
                "JaybirdMacros"
            ]
        )
    ],
    dependencies: [
        .package(
            url: "https://github.com/swiftlang/swift-syntax.git",
            exact: "601.0.1"
        ),
        .package(
            url: "https://github.com/nicklockwood/SwiftFormat.git",
            exact: "0.55.6"
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
        .target(
            name: "JaybirdMacros",
            dependencies: [
                "JaybirdCompilerPlugin",
                "Jaybird"
            ]
        ),
        .testTarget(
            name: "JaybirdMacrosTests",
            dependencies: [
                "JaybirdMacros",
                "Jaybird"
            ]
        ),
        .macro(
            name: "JaybirdCompilerPlugin",
            dependencies: [
                .product(
                    name: "SwiftSyntaxMacros",
                    package: "swift-syntax"
                ),
                .product(
                    name: "SwiftCompilerPlugin",
                    package: "swift-syntax"
                )
            ]
        )
    ]
)
