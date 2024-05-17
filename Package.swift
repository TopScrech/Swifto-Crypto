// swift-tools-version: 5.10
import PackageDescription

let package = Package(
    name: "Swifto Crypto",
    platforms: [
        .iOS(.v17),
        .macOS(.v14),
        .tvOS(.v17),
        .watchOS(.v10),
        .visionOS(.v1),
        .macCatalyst(.v17)
    ],
    products: [
        .library(
            name: "SwiftoCrypto",
            targets: ["SwiftoCrypto"]),
    ],
    targets: [
        .target(
            name: "SwiftoCrypto",
            dependencies: [],
            linkerSettings: [
                .linkedFramework("SwiftoCrypto")
            ]
        )
    ]
)
