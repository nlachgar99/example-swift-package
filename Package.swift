// swift-tools-version:5.4
import PackageDescription

let package = Package(
    name: "EquitiPayMasterLib", 
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "EquitiPayMasterLib",
            targets: ["EquitiPayMasterLib"]) 
    ],
    dependencies: [
        .package(
            url: "https://github.com/leantechnologies/link-sdk-ios-distribution",
            .exact("3.0.19")
        )
    ],
    targets: [
        .target(
            name: "EquitiPayMasterLib",
            dependencies: [
                .target(name: "EquitiMasterLibBinary"), 
                .product(name: "LeanSDK", package: "link-sdk-ios-distribution")
            ],
            path: "Sources/EquitiPayMasterLib" 
        ),
        
        .binaryTarget(
            name: "EquitiMasterLibBinary",
            url: "https://storage.googleapis.com/payment-scripts/mobile/EquitiPayMaster-1.0.12.xcframework.zip",
            checksum: "76e027fbb74bd31ba37e52397107d4a376d67c3c803d134688129979a149bc6d"
        )
    ]
)
