// swift-tools-version:5.3
import PackageDescription

// BEGIN KMMBRIDGE VARIABLES BLOCK (do not edit)
let remoteKotlinUrl = "https://maven.pkg.github.com/PiotrPrus/testKMMBridge/com/piotrprus/test/allshared-kmmbridge/0.1.0/allshared-kmmbridge-0.1.0.zip"
let remoteKotlinChecksum = "67c1d998ba8520c3b51324d84d27d6ae6b88b149de69690c7013ea098d55a46c"
let packageName = "allshared"
// END KMMBRIDGE BLOCK

let package = Package(
    name: packageName,
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: packageName,
            targets: [packageName]
        ),
    ],
    targets: [
        .binaryTarget(
            name: packageName,
            url: remoteKotlinUrl,
            checksum: remoteKotlinChecksum
        )
        ,
    ]
)