// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
	name: "vorbis-binary-xcframework",
	platforms: [
		.macOS(.v10_15),
		.iOS(.v14),
	],
	products: [
		// Products define the executables and libraries a package produces, making them visible to other packages.
		.library(
			name: "vorbis",
			targets: [
				"vorbis",
			]),
	],
	targets: [
		// Targets are the basic building blocks of a package, defining a module or a test suite.
		// Targets can depend on other targets in this package and products from dependencies.
		.binaryTarget(
			name: "vorbis",
			url: "https://github.com/sbooth/vorbis-binary-xcframework/releases/download/0.1.0/vorbis.xcframework.zip",
			checksum: "f02a5b5e0d00c54d0b8142a8db7ed96c4ec35b965a32fee1e194d19d48c1a6ff"),
	]
)
