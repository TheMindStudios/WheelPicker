// swift-tools-version:4.2
import PackageDescription

let package = Package(
    name: "WheelPicker",
    // platforms: [.iOS("9.0")],
    products: [
        .library(name: "WheelPicker", targets: ["WheelPicker"])
    ],
    targets: [
        .target(
            name: "WheelPicker",
            path: "WheelPicker"
        )
    ]
)
