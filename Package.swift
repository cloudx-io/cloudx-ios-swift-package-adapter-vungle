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
            url: "https://github.com/cloudx-io/cloudx-ios/releases/download/adapter-vungle/7.7.6.0/CloudXVungleAdapter.xcframework.zip",
            checksum: "ece9a346fcd254bf377028b52ca5003273dca07702e858eb5a6976b5c31d14ac"
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
