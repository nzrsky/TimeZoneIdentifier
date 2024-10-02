// swift-tools-version:5.9
import PackageDescription

let name = "TimeZoneIdentifier"

let package = Package(
    name: name,
    defaultLocalization: "en",
    platforms: [
        .macOS(.v10_15), .iOS(.v12), .watchOS(.v6), .tvOS(.v13), .visionOS(.v1)
    ],
    products: [
        .library(name: name, targets: [name])
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: name,
            dependencies: [],
            path: "Sources/\(name)",
			resources: []
        ),

        .testTarget(
            name: "\(name)Tests",
            dependencies: [.target(name: name)],
            path: "Tests/\(name)Tests"
        )
    ]
)
