// swift-tools-version: 5.6

import PackageDescription

let package = Package(
    name: "ReactiveFirebase",
    platforms: [.iOS(.v14)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "ReactiveFirebaseDatabase",
            targets: ["ReactiveFirebaseDatabase"]),
    ],
    dependencies: [
        .package(url: "https://github.com/firebase/firebase-ios-sdk", from: "8.15.0"),
        .package(url: "https://github.com/CombineCommunity/CombineExt", from: "1.5.1")
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
