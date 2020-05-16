class UrlFilter {
  List<String> schemes;
  String urlMatches;
  String pathContains;
  String hostSuffix;
  String hostPrefix;
  String hostContains;
  String urlContains;
  String querySuffix;
  String urlPrefix;
  String hostEquals;
  String urlEquals;
  String queryContains;
  String pathPrefix;
  String pathEquals;
  String pathSuffix;
  String queryEquals;
  String queryPrefix;
  String urlSuffix;
  List<dynamic> ports;
  String originAndPathMatches;
}

class Event<T extends Function> {
  void addListener(
    T callback, [
    T other,
  ]) {}
  void getRules(
    dynamic ruleIdentifiersOrCallback, [
    void Function(List<dynamic /*Rule*/ > rules) callback,
  ]) {}

  void hasListener(T callback) {}

  void removeRules(
    dynamic ruleIdentifiersOrCallback, [
    Function callback,
  ]) {}

  void addRules(
    List<Rule> rules, [
    void Function(List<Rule> rules) callback,
  ]) {}

  external void removeListener(T callback);
  external bool hasListeners();
}

class Rule {
  external num get priority;
}
