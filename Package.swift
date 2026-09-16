// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "CloudXVungleAdapter",
    platforms: [
        .iOS(.v13),
    ],
    products: [
        .library(
            name: "CloudXVungleAdapter",
            targets: ["CloudXVungleAdapterPackage"]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/cloudx-io/cloudx-ios-swift-package-core.git",
            from: "3.9.1"
        ),
        .package(
            url: "https://github.com/Vungle/VungleAdsSDK-SwiftPackageManager.git",
            exact: "7.7.4"
        ),
    ],
    targets: [
        .binaryTarget(
            name: "CloudXVungleAdapter",
            url: "https://github.com/cloudx-io/cloudx-ios/releases/download/adapter-vungle/7.7.4.0/CloudXVungleAdapter.xcframework.zip",
            checksum: "6111affbc60756c0311afd4b0eb6259be4dfd45c7bc57012dedb7c89de861d30"
        ),
        .target(
            name: "CloudXVungleAdapterPackage",
            dependencies: [
                "CloudXVungleAdapter",
                .product(name: "CloudXCore", package: "cloudx-ios-swift-package-core"),
                .product(name: "VungleAdsSDK", package: "vungleadssdk-swiftpackagemanager"),
            ]
        ),
        .testTarget(
            name: "CloudXVungleAdapterSwiftTests",
            dependencies: ["CloudXVungleAdapterPackage"],
            linkerSettings: [.unsafeFlags(["-Xlinker", "-ObjC"])]
        ),
        .testTarget(
            name: "CloudXVungleAdapterObjCTests",
            dependencies: ["CloudXVungleAdapterPackage"],
            linkerSettings: [.unsafeFlags(["-Xlinker", "-ObjC"])]
        ),
    ]
)
