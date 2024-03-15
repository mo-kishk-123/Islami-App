import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyProvider extends ChangeNotifier {
  String languageCode = "en";
  ThemeMode themeMode = ThemeMode.light;

  void changeLanguage(String langCode) {
    languageCode = langCode;
    notifyListeners();
  }

  void chaneTheme(ThemeMode mode) {
    themeMode = mode;
    notifyListeners();
  }

  String getBackGroundPath() {
    if (themeMode == ThemeMode.light) {
      return "assets/images/default_bg.png";
    } else {
      return "assets/images/dark_bg.png";
    }
  }

  String getlunguName() {
    if (languageCode == "en") {
      return "English";
    } else {
      return "عربى";
    }
  }

  String getThemeName() {
    if (themeMode == ThemeMode.light && languageCode == "en") {
      return "Light";
    } else if (themeMode == ThemeMode.light && languageCode == "ar") {
      return "فاتح";
    } else if (themeMode == ThemeMode.dark && languageCode == "ar") {
      return "غامق";
    } else {
      return "Dark";
    }
  }
}
