// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "FolioReaderKit",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "FolioReaderKit",
            targets: ["FolioReaderKit"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/ZipArchive/ZipArchive.git", from: "2.1.0"),
        .package(url: "https://github.com/cxa/MenuItemKit.git", from: "3.0.0"),
        .package(url: "https://github.com/zoonooz/ZFDragableModalTransition.git", from: "0.6.0"),
        .package(url: "https://github.com/tadija/AEXML.git", from: "4.2.0"),
        .package(url: "https://github.com/ArtSabintsev/FontBlaster.git", from: "4.0.0"),
        .package(url: "https://github.com/fantim/JSQWebViewController.git", from: "6.1.0"),
        .package(url: "https://github.com/realm/realm-swift.git", from: "10.0.0")
    ],
    targets: [
        .target(
            name: "FolioReaderKit",
            dependencies: [
                .product(name: "ZipArchive", package: "ZipArchive"),
                "MenuItemKit",
                "ZFDragableModalTransition",
                "AEXML",
                "FontBlaster",
                "JSQWebViewController",
                .product(name: "RealmSwift", package: "realm-swift")
            ],
            path: ".",
            exclude: [
                "docs",
                "Example",
                "Vendor",
                "Cartfile",
                "Cartfile.resolved",
                "Podfile",
                "Podfile.lock",
                "NFolioReaderKit.podspec",
                "Source/Resources"
            ],
            sources: [
                "FolioReaderKit",
                "Source"
            ],
            resources: [
                .process("Source/Resources")
            ]
        )
    ]
)
