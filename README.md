# Swift interoperability with C++

SwiftCppInter is a Swift package that demonstrates interoperability between Swift and C++ using Swift Package Manager and CMake.   
This package provides a `Game` class that interacts with a **C++** `Player` class, showcasing how to integrate C++ code within a Swift project.

### Features
* Swift and C++ interoperability.
* Integration using Swift Package Manager and CMake.
* Example Game class in Swift interacting with a Player class in C++.

### Requirements
* macOS 13.0 or later
* Swift 5.9 or later
* CMake 3.15 or later

### Installation
To use SwiftCppInter in your project, add the following dependency to your `Package.swift` file:

```swift
// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "YourProject",
    dependencies: [
        .package(url: "https://github.com/yourusername/SwiftCppInter.git", from: "1.0.0")
    ],
    targets: [
        .target(
            name: "YourTarget",
            dependencies: ["SwiftCppInter"]
        )
    ]
)

```

Or use add using XCode

### Demo usage

Here's an example of how to use the `Game` class:

```swift
import SwiftCppInter

let game = Game()
print("Player Name: \(game.getName())")
print("Player Level: \(game.getLevel())")
print("Player HP: \(game.getHP())")

```

### Building the Project

1. Clone the repository:
```shell
git clone https://github.com/KeoFoxy/SwiftCppInteroperability.git
cd SwiftCppInter
```
2. Build the project using Swift Package Manager:
`swift build`
3. Run tests:
`swift test`


### Building C++ Library

1. `cd Sources/cxxLibrary/build`
2. `cmake ..`
3. `make`

Swift automatically detects library modulemap. 