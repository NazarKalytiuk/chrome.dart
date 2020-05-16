import 'dart:async';

import 'package:chrome/src/interop/chrome.dart';
import 'package:js/js.dart';
import 'package:meta/meta.dart';

import 'package:chrome/src/interop/tabs.dart';

class Tabs {
  Future<List<TabJs>> query({
    @required QueryInfoJs queryInfo,
    void Function(List<TabJs> tabs) callback,
  }) {
    final c = Completer<List<TabJs>>();
    chrome_interop.tabs.query(
      queryInfo,
      allowInterop((tabs) {
        final result = tabs.cast<TabJs>();
        if (callback != null) {
          callback(result);
        }
        c.complete(result);
      }),
    );
    return c.future;
  }
}
