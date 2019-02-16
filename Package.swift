// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DeckOfPlayingCards",
    products: [
        .library(
            name: "DeckOfPlayingCards",
            targets: ["DeckOfPlayingCards"]),
    ],
    dependencies: [
        .package(url: "https://github.com/nieyu/FisherYates.git", from: "3.0.2"),
        .package(url: "https://github.com/nieyu/PlayingCard.git", from: "2.0.6")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "DeckOfPlayingCards",
            dependencies: ["FisherYates", "PlayingCard"]),
        .testTarget(
            name: "DeckOfPlayingCardsTests",
            dependencies: ["DeckOfPlayingCards"]),
    ]
)
