// swift-tools-version:5.3
import PackageDescription

let bnbPackageVersion: Version = "1.9.1-83-gf89cbbd807"

let package = Package(
    name: "BNBSdkApi",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "BNBSdkApi",
            targets: [
                "BNBSdkApi",
                "BNBSdkApi_BNBSdkCore"
            ]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/PiotrBanuba/BNBSdkCore.git",
            .exact(bnbPackageVersion)
        ),
    ],
    targets: [
        .binaryTarget(
            name: "BNBSdkApi",
            url: "https://d2cm7wtcqqw29.cloudfront.net/1.9.1-83-gf89cbbd807/BNBSdkApi.zip",
            checksum: "ae2867fc81ed50c9b6ae409a9b96faddb2d360d6b129b1499e67a26a4b0dc396"
        ),
        .target(
            name: "BNBSdkApi_BNBSdkCore",
            dependencies: [
                .product(
                    name: "BNBSdkCore",
                    package: "BNBSdkCore"
                ),
            ]
        ),
    ]
)
