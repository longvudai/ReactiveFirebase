// swift-tools-version: 5.6

import PackageDescription

let package = Package(
    name: "ReactiveFirebase",
    platforms: [.iOS(.v14), .watchOS(.v7), .macOS(.v11)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "ReactiveFirebaseDatabase",
            targets: ["ReactiveFirebaseDatabase"]),
    ],
    dependencies: [
        .package(url: "https://github.com/firebase/firebase-ios-sdk", from: "9.2.0"),
        .package(url: "https://github.com/CombineCommunity/CombineExt", from: "1.6.1")
    ],
    targets: [
        .target(
            name: "ReactiveFirebaseDatabase",
            dependencies: [
                .productItem(
                    name: "FirebaseDatabase",
                    package: "firebase-ios-sdk",
                    condition: nil
                ),
                .productItem(
                    name: "CombineExt",
                    package: "CombineExt",
                    condition: nil
                )
            ]
        ),
    ]
)
