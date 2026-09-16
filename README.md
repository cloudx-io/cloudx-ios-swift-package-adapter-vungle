# CloudX Vungle adapter Swift package

This repository distributes the Vungle adapter for the CloudX iOS SDK.

## Requirements

- iOS 13 or later
- Xcode 15 or later
- CloudX Core 3.9.1 or later

## Installation

Add this package in Xcode:

```text
https://github.com/cloudx-io/cloudx-ios-swift-package-adapter-vungle.git
```

Select an exact package version from the compatibility table. Add the
`CloudXVungleAdapter` product to the app target.

Add `-ObjC` to the app target's **Other Linker Flags**. The package uses this
flag to retain the adapter registration code.

| Package version | CloudX adapter | Vungle Ads SDK |
| --- | --- | --- |
| `7070400.0.0` | `7.7.4.0` | `7.7.4` |

The package installs CloudX Core and Vungle Ads SDK as dependencies. Import
`CloudXCore` in the application. The adapter registers when the application
loads.

## Versioning

CloudX adapter versions have four components. Swift package versions use three.
The package tag joins the adapter components into the major number. For example,
adapter `7.7.4.0` uses package version `7070400.0.0`.

## License

The CloudX adapter uses the Business Source License 1.1. See [LICENSE](LICENSE).
