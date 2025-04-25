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
    targets: [
        .target(
            name: "Jaybird"
        ),
        .testTarget(
            name: "JaybirdTests",
            dependencies: [
                "Jaybird"
            ]
        )
    ]
)
