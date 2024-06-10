import 'package:flutter/material.dart';

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

final lightTheme = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    primary: Colors.blue,
    secondary: Colors.green,
    error: Colors.red,
    surface: Colors.white,
    background: Colors.white,
    onPrimary: Colors.white,
    onSecondary: Colors.white,
    onError: Colors.white,
    onBackground: Colors.black,
    onSurface: Colors.black,
  ),
  fontFamily: 'IRANSansX',
  textTheme: const TextTheme(
    bodyLarge: TextStyle(fontFamily: 'IRANSansX', fontSize: 16.0),
    bodyMedium: TextStyle(fontFamily: 'IRANSansX', fontSize: 14.0),
    displayLarge: TextStyle(fontFamily: 'IRANSansX', fontSize: 32.0, fontWeight: FontWeight.bold),
    displayMedium: TextStyle(fontFamily: 'IRANSansX', fontSize: 24.0, fontWeight: FontWeight.bold),
    labelLarge: TextStyle(fontFamily: 'IRANSansX', fontSize: 16.0, fontWeight: FontWeight.bold),
  ),
);

final darkTheme = ThemeData(
  brightness: Brightness.dark,
  colorScheme: const ColorScheme.dark(
    primary: Colors.teal,
    secondary: Colors.lightGreen,
    error: Colors.red,
    surface: Colors.black,
    background: Colors.black,
    onPrimary: Colors.black,
    onSecondary: Colors.black,
    onError: Colors.white,
    onBackground: Colors.white,
    onSurface: Colors.white,
  ),
  fontFamily: 'IRANSansX',
  textTheme: const TextTheme(
    bodyLarge: TextStyle(fontFamily: 'IRANSansX', fontSize: 16.0),
    bodyMedium: TextStyle(fontFamily: 'IRANSansX', fontSize: 14.0),
    displayLarge: TextStyle(fontFamily: 'IRANSansX', fontSize: 32.0, fontWeight: FontWeight.bold),
    displayMedium: TextStyle(fontFamily: 'IRANSansX', fontSize: 24.0, fontWeight: FontWeight.bold),
    labelLarge: TextStyle(fontFamily: 'IRANSansX', fontSize: 16.0, fontWeight: FontWeight.bold),
  ),
);
