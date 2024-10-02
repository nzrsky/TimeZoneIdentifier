# List of Time Zones Identifiers for Swift 🌍

[![License](https://img.shields.io/badge/license-MIT-blue.svg)](https://github.com/nzrsky/TimeZoneIdentifier/blob/main/LICENSE)
[![CocoaPods Compatible](https://img.shields.io/cocoapods/v/TimeZoneIdentifier.svg)](https://img.shields.io/cocoapods/v/TimeZoneIdentifier.svg)
[![Carthage Compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
[![SwiftPM compatible](https://img.shields.io/badge/SwiftPM-compatible-orange.svg)](https://docs.revenuecat.com/docs/ios#section-install-via-swift-package-manager)
[![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fnzrsky%2FTimeZoneIdentifier%2Fbadge%3Ftype%3Dswift-versions)](https://swiftpackageindex.com/nzrsky/TimeZoneIdentifier)
[![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fnzrsky%2FTimeZoneIdentifier%2Fbadge%3Ftype%3Dplatforms)](https://swiftpackageindex.com/nzrsky/TimeZoneIdentifier)
[![codecov](https://codecov.io/gh/nzrsky/TimeZoneIdentifier/graph/badge.svg?token=kET1T95mW9)](https://codecov.io/gh/nzrsky/TimeZoneIdentifier)
[![CI](https://github.com/nzrsky/TimeZoneIdentifier/actions/workflows/build-test.yml/badge.svg)](https://github.com/nzrsky/TimeZoneIdentifier/actions/workflows/build-test.yml?query=branch%3Amain+)


<div align="center">
  <img src="image.png" alt="" style="display: inline-block;" width="50%">
</div>

## Overview

This Swift library provides a convenient way to handle time zones through the `TimeZoneConvertible` protocol and the `TimeZoneIdentifier` enum. Whether you need the current system time zone, an auto-updating time zone, or specific global time zones, this library has got you covered.

## Features

- Type-safe time zone identifiers.
- Extendable `TimeZoneConvertible` protocol.
- Easy-to-use, Swifty API.

## Automatic Updates 🔄

This library is set up with GitHub Actions to automatically update the list of time zone identifiers every day. The updates are compatible across all iOS versions.

The workflow ensures that the list stays current, and any changes are committed directly to the repository. Only the differences (diff) are committed, ensuring that the change history remains clean and easy to follow.
  
## Installation

### Swift Package Manager

Add the package dependency to your `Package.swift` file:

```swift
dependencies: [
    .package(url: "https://github.com/nzrsky/TimeZoneIdentifier.git", from: "1.0.0")
]
```

Then run:

```bash
swift build
```

## Usage
First, import the module:

```swift
import TimeZoneIdentifiers
```

### Using TimeZoneConvertible
You can use the TimeZoneConvertible protocol to seamlessly convert between types:

```swift
let timeZone: TimeZone = TimeZoneIdentifier.current.timezone()
```

### Using TimeZoneIdentifier Enum
The TimeZoneIdentifier enum allows you to easily access different time zones:

```swift
let currentZone = TimeZoneIdentifier.current.timezone()
let autoUpdatingZone = TimeZoneIdentifier.autoUpdating.timezone()
let specificZone = TimeZoneIdentifier.africaAbidjan.timezone()
```

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

## License
This project is licensed under the MIT License. See the LICENSE file for details.

Made in 🇱🇻 by Alex Nazarov
