// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ShadowGlow",
    platforms: [.iOS(.v15), .macOS(.v12), .visionOS(.v1), .tvOS(.v15), .watchOS(.v8)],
    products: [
        .library(
            name: "ShadowGlow",
            targets: ["ShadowGlow"]
        ),
    ],
    targets: [
        .target(
            name: "ShadowGlow"
        ),

    ]
)
