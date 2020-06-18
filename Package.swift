// swift-tools-version:5.1
import PackageDescription

let package = Package(
  name: "swift-remove-first-benchmark",
  dependencies: [
    .package(url: "https://github.com/google/swift-benchmark", .branch("master")),
  ],
  targets: [
    .target(
      name: "RemoveFirstBenchmark",
      dependencies: [.product(name: "Benchmark", package: "Benchmark")]),
  ]
)
