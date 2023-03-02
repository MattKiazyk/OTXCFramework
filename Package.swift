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
            targets: ["OpenTokResources"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "OpenTokResources",
            dependencies: [
                .target(name: packageName)
            ],
            linkerSettings: [
                .linkedFramework("Foundation"),
                .linkedFramework("AVFoundation"),
                .linkedFramework("AudioToolbox"),
                .linkedFramework("CoreFoundation"),
                .linkedFramework("CoreGraphics"),
                .linkedFramework("CoreMedia"),
                .linkedFramework("CoreTelephony"),
                .linkedFramework("CoreVideo"),
                .linkedFramework("GLKit"),
                .linkedFramework("OpenGLES"),
                .linkedFramework("QuartzCore"),
                .linkedFramework("SystemConfiguration"),
                .linkedFramework("UIKit"),
                .linkedFramework("VideoToolbox")
            ]
        ),
        .binaryTarget(
            name: packageName,
            url: "https://github.com/MattKiazyk/OpenTok/raw/main/OpenTok.zip",
            checksum: "4f64d1fbbd7e6f0aef490b4d3ae072057b5a12d814711da6c11892065de9c857"
            
            )
    ]
)
