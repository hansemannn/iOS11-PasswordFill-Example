# 🔑 iOS 11 PasswordFill Example

A quick example showing how to use the PasswordFill API in iOS 11 and Swift 4.

## Prerequisites
* Xcode 9 (Beta)
* "Associated Domains" capability added to your project's `.entitlements` file (when using own domains)
```xml
<key>com.apple.developer.associated-domains</key>
<array>
  <string>webcredentials:your-domain.com</string>
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
Then, create a file called `apple-app-site-association` with the following contents:
```json
{
    "webcredentials" : {
        "apps" : ["<team-id>.<bundle-id>"]
    }
}
```
Finally, upload the file to your server and place it into the sub-directory `.well-known`, e.g.
`http://hans-knoechel.de/.well-known/apple-app-site-association`.

That's it! Run the app on your device and scan your NFC NDEF-Tag.

## Author
Hans Knöchel ([@hansemannnn](https://twitter.com/hansemannnn))
