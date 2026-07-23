// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "REVUPMediaAdMob",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "REVUPMediaAdMob",
            targets: ["REVUPMediaAdMobTarget"]),
    ],
    dependencies: [
        .package(url: "https://github.com/googleads/swift-package-manager-google-mobile-ads.git", exact: "13.6.0"),
    ],
    targets: [
        .target(
            name: "REVUPMediaAdMobTarget",
            dependencies: [
                .target(name: "REVUPMediaAdMob"),
                .product(name: "GoogleMobileAds", package: "swift-package-manager-google-mobile-ads"),
            ],
            path: "Sources"
        ),
        .binaryTarget(
            name: "REVUPMediaAdMob",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.1.0/REVUPMediaAdMob.zip",
            checksum: "a49afc92c31c2ecd2e9e94bc3b1719938158d39f747e760eeb48b9aacaf7160c"
        ),
    ]
)
