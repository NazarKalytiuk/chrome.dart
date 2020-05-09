/// Support for doing something awesome.
///
/// More dartdocs go here.

@JS()
library chrome;

import 'package:js/js.dart';

import 'tabs.dart';

@JS('chrome')
external Chrome get chrome_interop;

@JS()
@anonymous
class Chrome {
  external Tabs get tabs;
}
