# React Native Apple StoreKit External Link

A React Native library that leverages Apple's StoreKit to present external link modals for account management or purchases outside the app.

---

## 🚀 Features

- **Seamless Integration:** Easy to integrate with your React Native project.
- **StoreKit Support:** Utilizes Apple's StoreKit for presenting external link modals.
- **iOS Compatibility:** Requires iOS 15.0 or later.

---

## 📦 Installation

### Using Yarn

```sh
yarn add react-native-apple-storekit-external-link
```

### Using NPM

```sh
npm install react-native-apple-storekit-external-link
```

### iOS Configuration

Ensure your Info.plist contains the following:

```xml
<key>NSUserActivityTypes</key>
<array>
    <string>com.apple.external-link-account</string>
</array>
```

Install CocoaPods dependencies

```bash
cd ios && pod install
```

### Usage

```js
import { showExternalLinkPopup } from 'react-native-apple-storekit-external-link';

const App = () => {
  const openExternalLink = () => {
    showExternalLinkPopup('123456789') // Replace with your App Store ID
      .then((result) => {
        console.log('Modal displayed successfully:', result);
      })
      .catch((error) => {
        console.error('Error displaying modal:', error);
      });
  };

  return <Button title="Open External Link" onPress={openExternalLink} />;
};

export default App;
```
