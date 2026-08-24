// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "pdfx",
    platforms: [
        .macOS("10.15")
    ],
    products: [
        .library(name: "pdfx", targets: ["pdfx"])
    ],
    dependencies: [
        .package(name: "FlutterFramework", path: "../FlutterFramework")
    ],
    targets: [
        .target(
            name: "pdfx",
            dependencies: [
                .product(name: "FlutterFramework", package: "FlutterFramework")
            ],
            cSettings: [
                .headerSearchPath("include/pdfx")
            ]
        )
    ]
)
