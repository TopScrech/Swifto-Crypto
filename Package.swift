// swift-tools-version: 6.3
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
            name: "Swifto Crypto",
            targets: ["SwiftoCrypto"]
        )
    ],
    targets: [
        .target(
            name: "SwiftoCrypto",
            linkerSettings: [
                .linkedFramework("CryptoKit")
            ]
        )
    ]
)
