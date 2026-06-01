// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "FawryPayAVLSPM",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "FawryPay_AVL_SPM",
            targets: ["FawryPay_AVL_SPM"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire.git", .upToNextMinor(from: "5.10.2")),
        .package(url: "https://github.com/hackiftekhar/IQKeyboardManager.git", .upToNextMinor(from: "6.5.16")),
    ],
    targets: [
        .target(
            name: "FawryPay_AVL_SPM",
            dependencies: [
                "FawryPaySDK_AVL",
                .product(name: "Alamofire", package: "Alamofire"),
                .product(name: "IQKeyboardManagerSwift", package: "IQKeyboardManager"),
            ],
            path: "Sources/FawryPaySDK_AVL"
        ),
        .binaryTarget(
            name: "FawryPaySDK_AVL",
            path: "./Sources/FawryPaySDK_AVL.xcframework"
        ),
    ]
)
