// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "FawryPayAVLSPM",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "FawryPayAVL",
            targets: ["FawryPayAVL"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire.git", .upToNextMinor(from: "5.10.2")),
        .package(url: "https://github.com/hackiftekhar/IQKeyboardManager.git", .upToNextMinor(from: "6.5.16")),
    ],
    targets: [
        .target(
            name: "FawryPayAVL",
            dependencies: [
                "FawryPaySDK",
                .product(name: "Alamofire", package: "Alamofire"),
                .product(name: "IQKeyboardManagerSwift", package: "IQKeyboardManager"),
            ],
            path: "Sources/FawryPayAVL"
        ),
        .binaryTarget(
            name: "FawryPaySDK",
            path: "Sources/FawryPaySDK.xcframework"
        ),
    ]
)
