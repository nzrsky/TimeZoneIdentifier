// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "TimeZoneIdentifier",
    defaultLocalization: "en",
    platforms: [
        .macOS(.v10_15), .iOS(.v12), .watchOS(.v6), .tvOS(.v13), .visionOS(.v1)
    ],
    products: [
        .library(name: "TimeZoneIdentifier", targets: ["TimeZoneIdentifier"])
    ],
    dependencies: [
        .package(url: "https://github.com/lukepistrol/SwiftLintPlugin", from: "0.2.2")
    ],
    targets: [
        .target(
            name: "TimeZoneIdentifier",
            dependencies: [],
            path: "Sources/TimeZoneIdentifier",
			resources: []
        ),

        .testTarget(
            name: "TimeZoneIdentifierTests",
            dependencies: ["TimeZoneIdentifier"],
            path: "Tests/TimeZoneIdentifierTests",
            plugins: [
                .plugin(name: "SwiftLint", package: "SwiftLintPlugin")
            ]
        )
    ]
)
