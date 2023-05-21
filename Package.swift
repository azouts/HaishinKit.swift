// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "HaishinKit",
    platforms: [
        .iOS(.v14),
        .tvOS(.v14),
        .macOS(.v10_13),
        .macCatalyst(.v14)
    ],
    products: [
        .library(name: "HaishinKit", targets: ["HaishinKit"])
    ],
    dependencies: [
        .package(url: "https://github.com/azouts/Logboard.git", branch: "main")
    ],
    targets: [
        .target(name: "SwiftPMSupport"),
        .target(name: "HaishinKit",
                dependencies: ["Logboard", "SwiftPMSupport"],
                path: "Sources",
                exclude: [
                ],
                sources: [
                    "Codec",
                    "Extension",
                    "FLV",
                    "HTTP",
                    "Media",
                    "MPEG",
                    "Net",
                    "RTMP",
                    "Util",
                    "Platforms"
                ])
    ]
)
