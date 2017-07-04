# 🔑 iOS 11 PasswordFill Example

A quick example showing how to use the PasswordFill API in iOS 11 and Swift 4.

## Prerequisites
* Xcode 9 (Beta)
* "Associated Domains" capability added to your project's `.entitlements` file
```xml
<key>com.apple.developer.associated-domains</key>
<array>
  <string>webcredentials:your-domain.come</string>
</array>
```

## Getting Started
In order to make the PasswordFill API work, you need to set the `textContentType` property of
your `UITextField` or `UITextView` to `.username` and `.password`:
```swift
let textField = UITextField(frame: CGRect(x: 20, y: 30, width: 300, height: 40))
textField.backgroundColor = UIColor.lightGray
textField.textContentType = .username
textField.placeholder = "Enter Username ..."

let textField2 = UITextField(frame: CGRect(x: 20, y: 70, width: 300, height: 40))
textField2.backgroundColor = UIColor.lightGray
textField2.textContentType = .password
textField2.placeholder = "Enter Password ..."
textField2.isSecureTextEntry = true
```
Then, add the views to your parent view:
```
self.view.addSubview(textField)
self.view.addSubview(textField2)
```
That's it! Run the app on your device and scan your NFC NDEF-Tag.

## Author
Hans Knöchel ([@hansemannnn](https://twitter.com/hansemannnn))
