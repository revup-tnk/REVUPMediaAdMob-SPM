// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "REVUPMediaAdMob",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "REVUPMediaAdMob",
            targets: ["REVUPMediaAdMobTarget"]),
    ],
    dependencies: [
        .package(url: "https://github.com/googleads/swift-package-manager-google-mobile-ads.git", exact: "13.11.0"),
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
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.2.0/REVUPMediaAdMob.zip",
            checksum: "7e924f98f6638ae71d87f06c46264075182d1f947448145e41edd862cd643b66"
        ),
    ]
)
