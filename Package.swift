// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "VMStack",
    products: [
        .library(
            name    : "VMStack",
            targets : ["VMStack"]),
    ],
    targets: [
        .target(
            name         : "VMStack",
            dependencies : [],
            path         :"Sources"),
        .testTarget(
            name         : "VMStackTests",
            dependencies : ["VMStack"],
            path         : "Tests"),
    ]
)
