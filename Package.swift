// swift-tools-version:4.2
import PackageDescription

let package = Package(
    name: "WheelPicker",
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
