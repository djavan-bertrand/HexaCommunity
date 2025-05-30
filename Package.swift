// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "HexaCommunity",
    platforms: [
        .iOS(.v14),
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
        .package(url: "https://github.com/kishikawakatsumi/KeychainAccess.git", from: "4.2.0"),
        .package(url: "https://github.com/apple/swift-protobuf.git", .upToNextMajor(from: "1.20.0")),
        .package(url: "https://github.com/grpc/grpc-swift.git", from: "1.23.0"),
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
            name: "HexaCore",
            dependencies: [
                "KeychainAccess",
                .product(name: "SwiftProtobuf", package: "swift-protobuf"),
                .product(name: "GRPC", package: "grpc-swift"),
            ]
        )
    ]
)
