// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GooglePlaces",
    products: [
        .library(name: "GooglePlaces", targets: ["GooglePlacesTarget"]),
    ],
    dependencies: [

    ],
    targets: [
        .target(
            name: "GooglePlacesTarget",
            dependencies: [
                .target(name: "GooglePlaces"),
            ],
            path: "Sources/GooglePlaces",
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
            path: "GooglePlaces-6.2.1-beta/GooglePlaces.xcframework"
        )
    ]
)
