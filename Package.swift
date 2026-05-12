// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "FawryPay_AVL_SPM",
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
        .package(url: "https://github.com/Alamofire/Alamofire.git", .upToNextMinor(from: "5.9.1")),
        .package(url: "https://github.com/SDWebImage/SDWebImage.git", .upToNextMajor(from: "5.0.0")),
        .package(url: "https://github.com/hackiftekhar/IQKeyboardManager.git", .upToNextMinor(from: "6.5.11")),
        .package(url: "https://github.com/SwiftKickMobile/SwiftMessages.git", .upToNextMinor(from: "9.0.6")),
        .package(url: "https://github.com/ReactiveX/RxSwift.git", exact: "6.9.0"),
    ],
    targets: [
        .target(
            name: "FawryPay_AVL_SPM",
            dependencies: [
                "FawryPaySDK_AVL",
                "MBRadioButton",
                .product(name: "Alamofire", package: "Alamofire"),
                .product(name: "SDWebImage", package: "SDWebImage"),
                .product(name: "IQKeyboardManagerSwift", package: "IQKeyboardManager"),
                .product(name: "SwiftMessages", package: "SwiftMessages"),
                .product(name: "RxSwift", package: "RxSwift"),
            ],
            path: "Sources/FawryPaySDK_AVL"
        ),
        .target(
            name: "MBRadioButton",
            path: "Sources/MBRadioButton"
        ),
        .binaryTarget(
            name: "FawryPaySDK_AVL",
            path: "./Sources/FawryPaySDK_AVL.xcframework"
        ),
    ]
)
