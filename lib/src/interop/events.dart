@JS()
library events;

import 'package:js/js.dart';

@JS()
@anonymous
class UrlFilterJs {
  external List<String> get schemes;
  external String get urlMatches;
  external String get pathContains;
  external String get hostSuffix;
  external String get hostPrefix;
  external String get hostContains;
  external String get urlContains;
  external String get querySuffix;
  external String get urlPrefix;
  external String get hostEquals;
  external String get urlEquals;
  external String get queryContains;
  external String get pathPrefix;
  external String get pathEquals;
  external String get pathSuffix;
  external String get queryEquals;
  external String get queryPrefix;
  external String get urlSuffix;
  external List<dynamic> get ports;
  external String get originAndPathMatches;

  external factory UrlFilterJs({
    String urlContains,
  });
}

@JS()
@anonymous
class EventJs<T extends Function> {
  external void addListener(
    T callback, [
    T other,
  ]);
  external void getRules(
    dynamic ruleIdentifiersOrCallback, [
    void Function(List<dynamic /*Rule*/ > rules) callback,
  ]);

  external void hasListener(T callback);

  external void removeRules(
    dynamic ruleIdentifiersOrCallback, [
    Function callback,
  ]);

  external void addRules(
    List<dynamic /*Rule*/ > rules, [
    void Function(List<dynamic /*Rule*/ > rules) callback,
  ]);

  external void removeListener(T callback);
  external bool hasListeners();
}

@JS()
@anonymous
class RuleJs {
  external num get priority;
  external List get conditions;
  external String get id;
  external List get actions;
  external List get tags;
}
