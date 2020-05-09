@JS()
library tabs;

import 'package:chrome/src/interop/runtime.dart' as runtime;
import 'package:chrome/src/interop/windows.dart' as windows;
import 'package:js/js.dart';

@JS()
@anonymous
class Tabs {
  /// Injects JavaScript code into a page. For details, see the programmatic injection section of the content scripts doc.
  external void executeScript(
    dynamic tabIdOrInjectDetails, [
    dynamic injectDetailsOrCallback,
    void Function(List<dynamic> result) callback,
  ]);

  /// Retrieves details about the specified tab
  external void get(
    num tabId,
    void Function(Tab tab) callback,
  );

  /// Gets details about all tabs in the specified window.
  /// @deprecated since Chrome 33. Please use tabs.query {windowId: windowId}.
  @deprecated
  external void getAllInWindow(
    dynamic windowIdOrCallback, [
    void Function(Tab tab) callback,
  ]);

  /// Gets the tab that this script call is being made from. May be undefined if called from a non-tab context (for example: a background page or popup view).
  external void getCurrent(
    void Function(dynamic tabOrNull) callback,
  );

  /// Gets the tab that is selected in the specified window.
  /// @deprecated since Chrome 33. Please use tabs.query {active: true}.
  @deprecated
  external void getSelected(
    dynamic windowIdOrCallback, [
    void Function(Tab tab) callback,
  ]);

  /// Creates a new tab.
  external void create(
    CreateProperties createProperties, [
    void Function(Tab tab) callback,
  ]);

  /// Moves one or more tabs to a new position within its window, or to a new window. Note that tabs can only be moved to and from normal (window.type === "normal") windows.
  external void move(
    dynamic tabIdOrIds,
    MoveProperties moveProperties, [
    void Function(dynamic tabOrTabs) callback,
  ]);

  /// Modifies the properties of a tab. Properties that are not specified in updateProperties are not modified.
  external void update(
    dynamic tabIdOrupdateProperties, [
    dynamic updatePropertiesOrCallback,
    void Function(Tab tab) callback,
  ]);

  /// Closes several tabs.
  external void remove(
    dynamic tabIdOrIds, [
    void Function() callback,
  ]);

  /// Captures the visible area of the currently active tab in the specified window. You must have <all_urls> permission to use this method.
  external void captureVisibleTab(
    dynamic callbackOrWindowIdOrOptions, [
    dynamic callbackOrOptions,
    void Function(String dataUrl) callback,
  ]);

  /// Reload a tab.
  external void reload([
    dynamic tabIdOrReloadPropertiesOrCallback,
    dynamic reloadPropertiesOrCallback,
    void Function() callback,
  ]);

  /// Duplicates a tab.
  external void duplicate(
    num tabId, [
    void Function(dynamic tabOrNull) callback,
  ]);

  /// Sends a single message to the content script(s) in the specified tab, with an optional callback to run when a response is sent back. The runtime.onMessage event is fired in each content script running in the specified tab for the current extension.
  external void sendMessage(
    num tabId,
    dynamic message, [
    dynamic optionsOrCallback,
    void Function(dynamic response) callback,
  ]);

  /// Sends a single request to the content script(s) in the specified tab, with an optional callback to run when a response is sent back. The extension.onRequest event is fired in each content script running in the specified tab for the current extension.
  @deprecated
  external void sendRequest(
    num tabId,
    dynamic request, [
    void Function(dynamic response) callback,
  ]);

  /// Connects to the content script(s) in the specified tab. The runtime.onConnect event is fired in each content script running in the specified tab for the current extension.
  external runtime.Port connect(
    num tabId, [
    ConnectInfo connectInfo,
  ]);

  external void insertCSS(
    dynamic tabIdOrDetails, [
    dynamic callbackOrDetails,
    Function callback,
  ]);

  /// Highlights the given tabs.
  external void highlight(
    HighlightInfo highlightInfo, [
    void Function(windows.Window window) callback,
  ]);

  /// Gets all tabs that have the specified properties, or all tabs if no properties are specified.
  external void query(
    QueryInfo queryInfo,
    void Function(List<dynamic> tabs) callback,
  );

  /// Detects the primary language of the content in a tab.
  external void detectLanguage(
    dynamic tabIdOrCallback, [
    void Function(String language) callback,
  ]);

  /// Zooms a specified tab.
  external void setZoom(
    num zoomFactorOrTabId, [
    dynamic zoomFactorOrCallback,
    Function callback,
  ]);

  external void getZoom(
    dynamic tabIdOrCallback, [
    void Function(num zoomFactor) callback,
  ]);

  external void setZoomSettings(
    dynamic tabIdOrZoomSettings, [
    dynamic zoomSettiingsOrCallback,
    Function callback,
  ]);

  external void getZoomSettings(
    dynamic tabIdOrCallback, [
    void Function(ZoomSettings zoomSettings) callback,
  ]);

  external void discard([
    num tabId,
    void Function(Tab tab) callback,
  ]);

  external void goForward(
    dynamic tabIdOrCallback, [
    Function callback,
  ]);

  external void goBack(
    dynamic tabIdOrCallback, [
    Function callback,
  ]);
}

class ZoomSettings {}

class HighlightInfo {}

class ConnectInfo {}

@JS()
@anonymous
class MoveProperties {}

@JS()
@anonymous
class CreateProperties {}

@JS()
@anonymous
class QueryInfo {
  external bool get active;
  external factory QueryInfo({
    bool active,
  });
}

@JS()
@anonymous
class Tab {
  external String get status;
  external num get index;
  external num get openerTabId;
  external String get title;
  external String get url;
  external String get pendingUrl;
  external bool get pinned;
  external bool get highlighted;
  external num get windowId;
  external bool get active;
  external String get favIconUrl;
  external num get id;
  external bool get incognito;
  external bool get selected;
  external bool get audible;
  external bool get discarded;
  external bool get autoDiscardable;
  external MutedInfo get mutedInfo;
  external num get width;
  external num get height;
  external String get sessionId;

  external factory Tab({
    String status,
    num index,
    num openerTabId,
    String title,
    String url,
    String pendingUrl,
    bool pinned,
    bool highlighted,
    num windowId,
    bool active,
    String favIconUrl,
    num id,
    bool incognito,
    bool selected,
    bool audible,
    bool discarded,
    bool autoDiscardable,
    MutedInfo mutedInfo,
    num width,
    num height,
    String sessionId,
  });
}

@JS()
@anonymous
class MutedInfo {
  external bool get muted;
  external String get reason;
  external String get extensionId;

  external factory MutedInfo({
    bool muted,
    String reason,
    String extensionId,
  });
}

@JS()
@anonymous
class InjectDetails {
  external String get code;
  external factory InjectDetails({
    String code,
  });
}
