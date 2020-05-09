import 'package:meta/meta.dart';

void main() {
  exec();
}

void exec({int tabId, String details, Function callback}) {
  if (tabId == null) {
    execute(details, callback);
  }
}

void execute([dynamic tabId, dynamic details, dynamic callback]) {}
