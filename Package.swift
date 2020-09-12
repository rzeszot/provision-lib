// swift-tools-version:5.2

import PackageDescription

let package = Package(
    name: "Provision",
    products: [
        .library(
            name: "Provision",
            targets: ["Provision"])
    ],
    targets: [
        .target(
            name: "Provision",
            dependencies: []),
        .testTarget(
            name: "ProvisionTests",
            dependencies: ["Provision"])
    ]
)
