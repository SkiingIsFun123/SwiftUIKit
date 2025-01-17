// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "SwiftUIKit",
    platforms: [
        .iOS(.v13),
        .tvOS(.v13),
        .watchOS(.v6),
        .macOS(.v11)
    ],
    products: [
        .library(
            name: "SwiftUIKit",
            targets: ["SwiftUIKit"]),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-docc-plugin", from: "1.0.0"),
        .package(url: "https://github.com/danielsaidi/Quick.git", .branch("main")),
        .package(url: "https://github.com/danielsaidi/Nimble.git", .branch("main")),
        .package(url: "https://github.com/danielsaidi/MockingKit.git", .upToNextMajor(from: "0.9.0"))
    ],
    targets: [
        .target(
            name: "SwiftUIKit",
            dependencies: []),
        .testTarget(
            name: "SwiftUIKitTests",
            dependencies: ["SwiftUIKit", "Quick", "Nimble", "MockingKit"])
    ]
)
