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
        //.package(url: "https://github.com/weichsel/ZIPFoundation", exact: "0.9.19"),
        //.package(url: "https://github.com/ZipArchive/ZipArchive.git", exact: "2.5.5"),
        .package(url: "https://github.com/expofp/expofp-common-ios-spm", exact: "4.5.14"),
    ],
    targets: [
        .target(name: "ExpoFpFplanTarget",
                dependencies: [
                    //.product(name: "ZIPFoundation", package: "ZIPFoundation"),
                    //.product(name: "ZipArchive", package: "ZipArchive"),
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
