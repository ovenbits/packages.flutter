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
            name: "pdfx_pigeon",
            dependencies: [
                .product(name: "FlutterFramework", package: "FlutterFramework")
            ],
            publicHeadersPath: "include",
            cSettings: [
                .headerSearchPath("include/pdfx")
            ]
        ),
        .target(
            name: "pdfx_swift",
            dependencies: [
                "pdfx_pigeon",
                .product(name: "FlutterFramework", package: "FlutterFramework")
            ]
        ),
        .target(
            name: "pdfx",
            dependencies: [
                "pdfx_swift",
                .product(name: "FlutterFramework", package: "FlutterFramework")
            ],
            cSettings: [
                .headerSearchPath("include/pdfx")
            ]
        )
    ]
)
