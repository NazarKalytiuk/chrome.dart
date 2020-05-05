/// Support for doing something awesome.
///
/// More dartdocs go here.

@JS()
library chrome;

import 'package:js/js.dart';
// export 'src/accessibility_features.dart';

// TODO: Export any libraries intended for clients of this package.

external Chrome get chrome;

@JS()
@anonymous
class Chrome {
  external Tabs get tabs;
}

typedef TabsExecureScriptCallback = void Function(List<dynamic> result);

@JS()
@anonymous
class Tabs {
  external void executeScript(InjectDetails details,
      {int tabId, TabsExecureScriptCallback callback});
}

class InjectDetails {}
