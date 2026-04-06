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
        .package(url: "https://github.com/googleads/swift-package-manager-google-mobile-ads.git", exact: "12.14.0"),
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
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.0.0/REVUPMediaAdMob.zip",
            checksum: "91783517a617fb0c470044b5825d197b8563927be8e1cb6428df2b36b9598d94"
        ),
    ]
)
