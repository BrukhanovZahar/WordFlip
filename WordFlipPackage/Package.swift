// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "WordFlipPackage",
    defaultLocalization: "rus",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "WordFlipPackage",
            targets: ["WordFlipPackage"
                     ]),
    ],
    dependencies: [
        
    ],
    targets: [
        .target(
            name: "WordFlipPackage",
            dependencies: ["EntityModule", "ProfilePackage", "Authentication"]),
        .target(
            name: "ProfilePackage",
            dependencies: ["SystemDesign"]),
        .target(
            name: "SystemDesign",
            dependencies: []),
        .target(
            name: "Authentication",
                dependencies: ["SystemDesign"]),
         .target(
            name: "EntityModule",
            dependencies: ["SystemDesign"]),
        .testTarget(
            name: "WordFlipPackageTests",
            dependencies: ["WordFlipPackage"]),
    ]
)
