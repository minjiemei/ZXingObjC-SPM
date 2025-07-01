// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "ZXingObjC",
    platforms: [
        .iOS(.v11),
        .macOS(.v10_13)
    ],
    products: [
        .library(name: "ZXingObjC", targets: ["ZXingObjC"]),
    ],
    targets: [
        .target(
            name: "ZXingCore",
            path: "Sources/ZXingCore",
            publicHeadersPath: ".",
            cSettings: [
                .headerSearchPath("core"),
                .headerSearchPath("cpp"),
            ]
        ),
        .target(
            name: "ZXingAztec",
            dependencies: ["ZXingCore"],
            path: "Sources/ZXingAztec",
            publicHeadersPath: ".",
            cSettings: [
                .headerSearchPath("aztec")
            ]
        ),
        .target(
            name: "ZXingPDF417",
            dependencies: ["ZXingCore"],
            path: "Sources/ZXingPDF417",
            publicHeadersPath: ".",
            cSettings: [
                .headerSearchPath("pdf417")
            ]
        ),
        .target(
            name: "ZXingQRCode",
            dependencies: ["ZXingCore"],
            path: "Sources/ZXingQRCode",
            publicHeadersPath: ".",
            cSettings: [
                .headerSearchPath("qrcode")
            ]
        ),
        .target(
            name: "ZXingOned",
            dependencies: ["ZXingCore"],
            path: "Sources/ZXingOned",
            publicHeadersPath: ".",
            cSettings: [
                .headerSearchPath("oned")
            ]
        ),
        .target(
            name: "ZXingMulti",
            dependencies: ["ZXingCore", "ZXingOned", "ZXingQRCode", "ZXingPDF417", "ZXingAztec"],
            path: "Sources/ZXingMulti",
            publicHeadersPath: ".",
            cSettings: [
                .headerSearchPath("multi")
            ]
        ),
        .target(
            name: "ZXingObjC",
            dependencies: ["ZXingCore", "ZXingOned", "ZXingQRCode", "ZXingPDF417", "ZXingAztec", "ZXingMulti"],
            path: "Sources/ZXingObjC",
            publicHeadersPath: "."
        )
    ]
)
