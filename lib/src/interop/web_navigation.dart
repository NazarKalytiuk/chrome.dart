@JS()
library web_navigation;

import 'package:js/js.dart';

@JS()
@anonymous
class WebNavigationJs {
  external WebNavigationFramedEventJs get onCompleted;
}

@JS()
@anonymous
class WebNavigationFramedEventJs
    extends WebNavigationEventJs<WebNavigationFramedCallbackDetailsJs> {}

@JS()
@anonymous
class WebNavigationEventJs<T extends WebNavigationCallbackDetailsJs> {
  // extends events.EventJs<Function>

  // external void addListener(
  //   T callback, [
  //   T other,
  // ]);

  external void getRules(
    dynamic ruleIdentifiersOrCallback, [
    void Function(List<dynamic> rules) callback,
  ]);

  external void hasListener(T callback);

  external void removeRules(
    dynamic ruleIdentifiersOrCallback, [
    Function callback,
  ]);

  external void addRules(
    List<dynamic> rules, [
    void Function(List<dynamic> rules) callback,
  ]);

  external void removeListener(T callback);

  external bool hasListeners();

  // end exdends

  // overrided from events.Event
  external void addListener(
    void Function(T details) callback, [
    WebNavigationEventFilterJs filters,
  ]);
}

@JS()
@anonymous
class WebNavigationEventFilterJs {
  external List get url;
  external factory WebNavigationEventFilterJs({
    List url,
  });
}

@JS()
@anonymous
class WebNavigationCallbackDetailsJs {
  external num get tabId;
  external num get timeStamp;
}

@JS()
@anonymous
class WebNavigationFramedCallbackDetailsJs
    extends WebNavigationCallbackDetailsJs {
  external num get frameId;
  external num get processId;
}

@JS()
@anonymous
class WebNavigationUrlCallbackDetailsJs extends WebNavigationCallbackDetailsJs {
  external String get url;
}
