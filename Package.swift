// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
	name: "vorbis-binary-xcframework",
	platforms: [
		.macOS(.v11),
		.iOS(.v15),
		.tvOS(.v15),
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
			url: "https://github.com/sbooth/vorbis-binary-xcframework/releases/download/0.1.2/vorbis.xcframework.zip",
			checksum: "063843e2bfd1e85e445e3d03d4263268118dfb91406f5e74c33ce68a02865247"),
	]
)
