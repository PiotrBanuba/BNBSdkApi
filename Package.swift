// swift-tools-version:5.3
import PackageDescription

let bnbPackageVersion: Version = "1.8.0-14"

let package = Package(
    name: "BNBSdkApi",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "BNBSdkApi",
            targets: [
                "BNBSdkApi_Target",
                "BNBSdkApi_BNBSdkCore_Target"
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
            name: "BNBSdkApi_Target",
            url: "https://d2cm7wtcqqw29.cloudfront.net/1.8.0-58-g46079e7d74/BNBSdkApi.zip",
            checksum: "c0004f7c8c997031ca092bc15aa15ecb00f71c541224cf0d1c8fbe235e3b7b92"
        ),
        .target(
            name: "BNBSdkApi_BNBSdkCore_Target",
            dependencies: [
                .product(
                    name: "BNBSdkCore",
                    package: "BNBSdkCore"
                ),
            ]
        ),
    ]
)
