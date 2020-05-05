typedef DetailsCallback = void Function(ChromeSettingGetResultDetails details);

class ChromeSettingGetResultDetails {
  external factory ChromeSettingGetResultDetails({
    String levelOfControl,
    dynamic value,
    bool incognitoSpecific,
  });
  external String get levelOfControl;
  external dynamic get value;
  external bool get incognitoSpecific;
}
