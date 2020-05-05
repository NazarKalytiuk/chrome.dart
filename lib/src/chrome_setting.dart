import 'package:chrome/src/chrome_setting_clear_details.dart';
import 'package:chrome/src/chrome_setting_get_details.dart';
import 'package:chrome/src/chrome_setting_set_details.dart';
import 'package:chrome/src/details_callback.dart';

class ChromeSettings {
  external void set(ChromeSettingSetDetails details, Function callback);
  external void get(ChromeSettingGetDetails details, DetailsCallback callback);
  external void clear(ChromeSettingClearDetails details, Function callback);
  external ChromeSettingChangedEvent get onChange;
}

class ChromeSettingChangedEvent {}
