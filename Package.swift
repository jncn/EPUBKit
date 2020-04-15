// swift-tools-version:5.2
import PackageDescription

let package = Package(
    name: "EPUBKit",
    platforms: [
        .macOS(.v10_15), .iOS(.v13), .tvOS(.v13),
    ],
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "EPUBKit", targets: ["EPUBKit", "EPUBKitTests"])
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "https://github.com/tadija/AEXML.git", from: "4.5.0"),
        .package(url: "https://github.com/marmelroy/Zip.git", from: "1.1.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "EPUBKit",
            dependencies: ["AEXML", "Zip"]),
        .testTarget(
            name: "EPUBKitTests",
            dependencies: ["EPUBKit"])
    ]
)
