// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "HexaCommunity",
    platforms: [
        .iOS(.v13),
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "Hexa",
            targets: ["Hexa"]),
        .library(
            name: "HexaUI",
            targets: ["HexaUI"]),
    ],
    dependencies: [
        .package(url: "https://github.com/swiftlang/swift-docc-plugin", from: "1.1.0"),
    ],
    targets: [
        .target(
            name: "HexaUI",
            dependencies: [
                "Hexa",
                "HexaCore",
            ]),
        .target(
            name: "Hexa",
            dependencies: [
                "HexaCore",
            ]),
        .target(
            name: "HexaCore"
            )
    ]
)
