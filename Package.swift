// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "Log",
    products: [
        .library(
            name: "Log",
            targets: ["Log"]),
    ],
    targets: [
        .target(
            name: "Log",
            path: "Source")
    ]
)
