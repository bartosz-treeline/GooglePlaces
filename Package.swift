// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GooglePlaces",
    products: [
        .library(name: "GooglePlaces", targets: ["GooglePlaces"]),
    ],
    dependencies: [

    ],
    targets: [
        .target(
            name: "GooglePlaces",
            dependencies: [
                .target(name: "GooglePlacesBinaryTarget"),
            ],
            linkerSettings: [
                .linkedLibrary("libc++"),
                .linkedLibrary("libz"),
                .linkedFramework("CoreGraphics"),
                .linkedFramework("CoreLocation"),
                .linkedFramework("QuartzCore"),
                .linkedFramework("UIKit"),
           ]
        ),
        .binaryTarget(
            name: "GooglePlacesBinaryTarget",
            path: "GooglePlaces-6.2.1-beta/GooglePlaces.xcframework"
        )
    ]
)
