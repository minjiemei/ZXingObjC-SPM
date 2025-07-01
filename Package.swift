// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "ZXingObjC",
    platforms: [
        .iOS(.v11),
        .macOS(.v10_13)
    ],
    products: [
        .library(
            name: "ZXingObjC",
            targets: ["ZXingObjC"]
        )
    ],
    targets: [
        .target(
            name: "ZXingObjC",
            path: "Sources/ZXingObjC",
            publicHeadersPath: ".",
            cSettings: [
                .headerSearchPath("core"),
                .headerSearchPath("cpp"),
                .headerSearchPath("aztec"),
                .headerSearchPath("datamatrix"),
                .headerSearchPath("maxicode"),
                .headerSearchPath("multi"),
                .headerSearchPath("oned"),
                .headerSearchPath("pdf417"),
                .headerSearchPath("qrcode")
            ]
        )
    ]
)
