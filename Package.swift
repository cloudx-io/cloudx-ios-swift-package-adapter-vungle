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
            exact: "7.7.6"
        ),
    ],
    targets: [
        .binaryTarget(
            name: "CloudXVungleAdapter",
            url: "https://github.com/cloudx-io/cloudx-ios-swift-package-adapter-vungle/releases/download/binary/7070601.0.0/CloudXVungleAdapter.xcframework.zip",
            checksum: "812dea7fc21f7beaa901c2140849095b82fbc93c70c3fdef78082fe807ab8d20"
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
