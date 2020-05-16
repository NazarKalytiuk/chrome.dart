/// Support for doing something awesome.
///
/// More dartdocs go here.

@JS()
library chrome;

import 'package:js/js.dart';

import 'tabs.dart';
import 'web_navigation.dart';

@JS('chrome')
external ChromeJs get chrome_interop;

@JS()
@anonymous
class ChromeJs {
  external TabsJs get tabs;
  external WebNavigationJs get webNavigation;
}
