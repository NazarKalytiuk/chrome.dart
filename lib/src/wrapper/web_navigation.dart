import 'package:chrome/src/interop/chrome.dart';
import 'package:chrome/src/interop/events.dart';
import 'package:chrome/src/interop/web_navigation.dart';
import 'package:js/js.dart';

class WebNavigation {
  WebNavigationFramedEvent get onCompleted {
    return WebNavigationFramedEvent(chrome_interop.webNavigation.onCompleted);
  }
}

class WebNavigationFramedEvent extends WebNavigationEvent<WebNavigationFramedCallbackDetailsJs> {
  WebNavigationFramedEvent(jsObject) : super(jsObject);
}

class WebNavigationEvent<T extends WebNavigationCallbackDetailsJs> {
  WebNavigationEventJs jsObject;
  void addListener(
    void Function(WebNavigationCallbackDetailsJs details) callback, [
    WebNavigationEventFilter filters,
  ]) {
    if (filters != null) {
      var f = WebNavigationEventFilterJs(url: filters.url);
      jsObject.addListener(allowInterop(callback), f);
    } else {
      jsObject.addListener(allowInterop(callback));
    }
  }

  WebNavigationEvent(this.jsObject);
}

class WebNavigationEventFilter {
  List<UrlFilterJs> url;
}
