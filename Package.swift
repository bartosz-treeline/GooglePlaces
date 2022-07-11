// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GooglePlaces",
    products: [
        .library(name: "GooglePlaces", type: .dynamic, targets: ["GooglePlacesWrapper"]),
        .library(name: "GooglePlacesStatic", type: .static, targets: ["GooglePlacesWrapper"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "GooglePlacesWrapper",
            dependencies: [
                .target(name: "GooglePlaces"),
            ],
            path: "GooglePlacesWrapper",
            linkerSettings: [
                .linkedLibrary("c++"),
                .linkedLibrary("z"),
                .linkedFramework("CoreGraphics"),
                .linkedFramework("CoreLocation"),
                .linkedFramework("QuartzCore"),
                .linkedFramework("UIKit"),
           ]
        ),
        .binaryTarget(
            name: "GooglePlaces",
            url: "https://github.com/bartosz-treeline/GooglePlaces/releases/download/6.2.1/GooglePlaces.xcframework.zip",
            checksum: "ae7567ab571a065eb8e8cf85abced438a61079bf4191190eb67099c9854f0758"
        )
    ]
)
