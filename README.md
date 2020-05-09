A library for Dart developers.

## Usage

A simple usage example:

```dart
import 'package:chrome/chrome.dart';
import 'package:js/js.dart';

main() {
  chrome.tabs.query(
    queryInfo: QueryInfo(active: true),
    callback: (t) {
      print(t[0].id);
    },
  );
}
```

## Features and bugs

Please file feature requests and bugs at the [issue tracker][tracker].

[tracker]: https://github.com/NazarKalytiuk/chrome.dart/issues/new/choose

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
