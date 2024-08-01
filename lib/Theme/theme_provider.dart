
import 'package:flutter/material.dart';
import 'package:zerang/theme/consts.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData _themeData;

  ThemeProvider({bool isDarkMode = false})
      : _themeData = isDarkMode ? darkTheme : lightTheme;

  ThemeData get themeData => _themeData;

  void setDarkMode() {
    _themeData = darkTheme;
    notifyListeners();
  }

  void setLightMode() {
    _themeData = lightTheme;
    notifyListeners();
  }

  void setSystemMode(Brightness brightness) {
    if (brightness == Brightness.dark) {
      setDarkMode();
    } else {
      setLightMode();
    }
  }

  void toggleTheme() {
    if (_themeData.brightness == Brightness.dark) {
      setLightMode();
    } else {
      setDarkMode();
    }
  }
}

