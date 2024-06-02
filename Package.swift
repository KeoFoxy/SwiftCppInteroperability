// swift-tools-version: 5.9
import PackageDescription

let package = Package(
        name: "SwiftCppInter",
        platforms: [
            .macOS(.v13)
        ],
        products: [
            .library(
                name: "SwiftCppInter",
                targets: ["SwiftCppInter"]
            )
        ],
        targets: [
            .target(
                name: "cxxLibrary",
                path: "Sources/cxxLibrary",
                publicHeadersPath: "include",
                cxxSettings: [
                    .headerSearchPath("include"),
                    .define("SWIFT_PACKAGE")
                ]
            ),
            .target(
                name: "SwiftCppInter",
                dependencies: ["cxxLibrary"],
                path: "Sources/SwiftCppInter",
                swiftSettings: [.interoperabilityMode(.Cxx)]
            ),
            .testTarget(
                name: "SwiftCppInterTests",
                dependencies: ["SwiftCppInter"],
                path: "Tests/SwiftCppInterTests",
                swiftSettings: [.interoperabilityMode(.Cxx)]
            )
        ]
)

