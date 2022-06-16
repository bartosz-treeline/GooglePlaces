# GooglePlaces
GooglePlaces framework packed as a swift package

### Steps to create SPM package

1. Download the code from https://github.com/YAtechnologies/GoogleMaps-SP
2. Update the `Cartfile` to have only `GooglePlaces` reference, so the carthage downloads only the `GooglePlaces` framework. Update the version to the desired one, e.g.: `6.2.1-beta`.
3. Update the `make_xcframework.sh` script to process only `GooglePlaces` framework.
4. Use `bash ./make_xcframework.sh -g` in order to fetch the framework and make xcframework out of it.
5. Make some adjustments inside the xcframework:
  - move `*.bundle` one directory up, out of `Resources` directory
  - remove `Resources` directory
  - remove `Info.plist` from the `*.bundle` directory
  - make the binary inside the `*.framework` an executable by invoking `chmod +x <binary>`
  - add simplified `Info.plist` inside the `*.framework` directory (see Releases for reference)
6. Comment out the carthage step, so the carthage does not download the binary and override made changes
7. Run `bash ./make_xcframework.sh -g` to create xcframework once again
8. Use the `Build` folder (zip * checksum inside) to distribute the framework as a swift package.

### Reference

https://github.com/firebase/firebase-ios-sdk/blob/master/Package.swift
https://github.com/PSPDFKit/PSPDFKit-SP/blob/master/Package.swift
https://github.com/YAtechnologies/GoogleMaps-SP/blob/main/Package.swift
