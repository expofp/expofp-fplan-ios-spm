// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ExpoFpFplan",
    platforms: [.iOS(.v14)],

    products: [
        .library(
            name: "ExpoFpFplan",
            targets: ["ExpoFpFplanTarget"]),
    ],
    dependencies: [
        .package(url: "https://github.com/expofp/expofp-common-ios-spm", from: "4.9.1"),
    ],
    targets: [
        .target(name: "ExpoFpFplanTarget",
                dependencies: [
                    .product(name: "ExpoFpCommon", package: "expofp-common-ios-spm"),
                    .target(name: "ExpoFpFplan")
                ],
                path: "ExpoFpFplanTarget",
                resources: [.copy("PrivacyInfo.xcprivacy")]
        ),

        .binaryTarget(name: "ExpoFpFplan",
                      path: "ExpoFpFplan.xcframework"
                     ),
    ],
    swiftLanguageVersions: [.v5]
)
