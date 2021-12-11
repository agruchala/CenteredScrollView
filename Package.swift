// swift-tools-version:5.2
import PackageDescription

let package = Package(
    name: "CenteredScrollView",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "CenteredScrollView", targets: ["CenteredScrollView"])
        ],
        dependencies: [ ],
        targets: [
            .target(
                name: "CenteredScrollView",
                path: "CenteredScrollView",
                sources: ["Classes"]),
    ]
)
