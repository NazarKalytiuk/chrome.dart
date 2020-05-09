import 'dart:async';

import 'package:chrome/src/interop/chrome.dart';
import 'package:js/js.dart';
import 'package:meta/meta.dart';

import 'package:chrome/src/interop/tabs.dart';

class Tabs {
  Future<List<Tab>> query({
    @required QueryInfo queryInfo,
    void Function(List<Tab> tabs) callback,
  }) {
    final c = Completer<List<Tab>>();
    chrome_interop.tabs.query(
      queryInfo,
      allowInterop((tabs) {
        final result = tabs.cast<Tab>();
        if (callback != null) {
          callback(result);
        }
        c.complete(result);
      }),
    );
    return c.future;
  }
}
