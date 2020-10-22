// swift-tools-version:5.0

import PackageDescription

let package = Package(
	name: "Font",
	platforms: [
		.macOS("10.9"),
		.iOS("7.0"),
		.tvOS("9.0"),
		.watchOS("2.0"),
	],
	products: [
		.library(
			name: "Font",
			targets: ["Font"]),
	],
	targets: [
		.target(
			name: "Font",
			dependencies: []),
	]
)
