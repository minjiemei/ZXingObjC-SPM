// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "ZXingObjC",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "ZXingObjC",
            targets: ["ZXingObjC"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "ZXingObjC",
            path: "Sources",
            publicHeadersPath: "include/.",
        linkerSettings: [
            .linkedFramework("Foundation")
        ]),
        
    ]
)
