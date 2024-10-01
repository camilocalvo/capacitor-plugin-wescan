// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "CapacitorPluginWescan",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "CapacitorPluginWescan",
            targets: ["WeScanPlugin"])
    ],
    dependencies: [
        .package(url: "https://github.com/ionic-team/capacitor-swift-pm.git", branch: "main")
    ],
    targets: [
        .target(
            name: "WeScanPlugin",
            dependencies: [
                .product(name: "Capacitor", package: "capacitor-swift-pm"),
                .product(name: "Cordova", package: "capacitor-swift-pm")
            ],
            path: "ios/Sources/WeScanPlugin"),
        .testTarget(
            name: "WeScanPluginTests",
            dependencies: ["WeScanPlugin"],
            path: "ios/Tests/WeScanPluginTests")
    ]
)
