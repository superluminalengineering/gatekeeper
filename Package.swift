// swift-tools-version:5.6
import PackageDescription

let package = Package(
    name: "gatekeeper",
    platforms: [
        .macOS(.v10_15),
    ],
    products: [
        .library(
            name: "Gatekeeper",
            targets: ["Gatekeeper"]),
    ],
    dependencies: [
        .package(url: "https://github.com/superluminalengineering/vapor", branch: "main"),
    ],
    targets: [
        .target(
            name: "Gatekeeper",
            dependencies: [
                .product(name: "Vapor", package: "vapor")
            ]),
        .testTarget(
            name: "GatekeeperTests",
            dependencies: [
                "Gatekeeper",
                .product(name: "XCTVapor", package: "vapor")
            ]),
    ]
)
