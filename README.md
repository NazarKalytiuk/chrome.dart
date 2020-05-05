A library for Dart developers.

## Usage

A simple usage example:

```dart
import 'package:chrome/chrome.dart';

main() {
  chrome.tabs.query(QueryInfo(active: true, currentWindow: true), allowInterop((tabs) {
    print(tabs[0].id);
  }));
}
```

## Features and bugs

Please file feature requests and bugs at the [issue tracker][tracker].

[tracker]: http://example.com/issues/replaceme

## Checklist

- [ ] accessibilityFeatures
- [ ] alarms
- [ ] bookmarks
- [ ] browserAction
- [ ] browsingData
- [ ] certificateProvider
- [ ] commands
- [ ] contentSettings
- [ ] contextMenus
- [ ] cookies
- [ ] debugger
- [ ] declarativeContent
- [ ] desktopCapture
- [ ] devtools
- [ ] documentScan
- [ ] downloads
- [ ] enterprise
- [ ] events
- [ ] extension
- [ ] extensionTypes
- [ ] fileBrowserHandler
- [ ] fileSystemProvider
- [ ] fontSettings
- [ ] gcm
- [ ] history
- [ ] i18n
- [ ] identity
- [ ] idle
- [ ] input.ime
- [ ] instanceID
- [ ] loginState
- [ ] management
- [ ] networking.config
- [ ] notifications
- [ ] omnibox
- [ ] pageAction
- [ ] pageCapture
- [ ] permissions
- [ ] platformKeys
- [ ] power
- [ ] printerProvider
- [ ] printing
- [ ] printingMetrics
- [ ] privacy
- [ ] proxy
- [ ] runtime
- [ ] sessions
- [ ] storage
- [ ] system
- [ ] tabCapture
- [ ] tabs
- [ ] topSites
- [ ] tts
- [ ] ttsEngine
- [ ] types
- [ ] vpnProvider
- [ ] wallpaper
- [ ] webNavigation
- [ ] webRequest
- [ ] windows
