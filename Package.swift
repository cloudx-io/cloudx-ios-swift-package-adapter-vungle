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
            exact: "7.7.8"
        ),
    ],
    targets: [
        .binaryTarget(
            name: "CloudXVungleAdapter",
            url: "https://github.com/cloudx-io/cloudx-ios-swift-package-adapter-vungle/releases/download/binary/7070800.0.0/CloudXVungleAdapter.xcframework.zip",
            checksum: "4e5e31b8f7b4166427dcf969d6c7d76b23856129b2133c215d8ed5618c55b2f2"
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
