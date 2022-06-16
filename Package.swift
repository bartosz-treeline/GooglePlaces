// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GooglePlaces",
    products: [
        .library(name: "GooglePlaces", type: .dynamic, targets: ["GooglePlacesTarget"]),
        .library(name: "GooglePlacesStatic", type: .static, targets: ["GooglePlacesTarget"]),
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
            url: "https://github.com/bartosz-treeline/GooglePlaces/releases/download/6.2.1/GooglePlaces.xcframework.zip",
            checksum: "fca29bac3686cb267e5dadfc780471bc8f7295f659ec15af8772a7f741fda7e3"
        )
    ]
)
