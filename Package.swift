// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TorusEd25519Key",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "TorusEd25519Key",
            targets: ["TorusEd25519Key"]),
    ],
    dependencies: [
        .package(name: "TweetNacl", url: "https://github.com/bitmark-inc/tweetnacl-swiftwrap.git", from: "1.0.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "TorusEd25519Key",
            dependencies: ["TweetNacl"]),
        .testTarget(
            name: "TorusEd25519KeyTests",
            dependencies: ["TorusEd25519Key","TweetNacl"]),
    ]
)
