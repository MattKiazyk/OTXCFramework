// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let packageName = "OpenTok"

let package = Package(
    name: packageName,
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: packageName,
            targets: [packageName]),
    ],
    dependencies: [
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(
            name: packageName,
            url: "https://github.com/MattKiazyk/OpenTok/raw/main/OpenTok.zip",
            checksum: "181c39db6846f3df2ae9923e9eee85384ca3740f5ca9608f0dd4202c2f0a7396"
            ),
    ]
)
