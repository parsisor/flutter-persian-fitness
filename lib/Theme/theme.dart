import 'package:Zerang/code_assets.dart/consts.dart';
import 'package:flutter/material.dart';

final ColorScheme lightColorScheme = ColorScheme.light(
  brightness: Brightness.light,
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
);

final ColorScheme darkColorScheme = const ColorScheme.dark(
  brightness: Brightness.dark,
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
);

ThemeData lightmode = ThemeData(
  brightness: Brightness.light,
  colorScheme: lightColorScheme,
  fontFamily: 'IRANSansX',
  textTheme: const TextTheme(
    bodyLarge: TextStyle(fontFamily: 'IRANSansX', fontSize: 16.0),
    bodyMedium: TextStyle(fontFamily: 'IRANSansX', fontSize: 14.0),
    displayLarge: TextStyle(fontFamily: 'IRANSansX', fontSize: 32.0, fontWeight: FontWeight.bold),
    displayMedium: TextStyle(fontFamily: 'IRANSansX', fontSize: 24.0, fontWeight: FontWeight.bold),
    labelLarge: TextStyle(fontFamily: 'IRANSansX', fontSize: 16.0, fontWeight: FontWeight.bold),
  ),
);

ThemeData darkmode = ThemeData(
  brightness: Brightness.dark,
  colorScheme: darkColorScheme,
  fontFamily: 'IRANSansX',
  textTheme: const TextTheme(
    bodyLarge: TextStyle(fontFamily: 'IRANSansX', fontSize: 16.0),
    bodyMedium: TextStyle(fontFamily: 'IRANSansX', fontSize: 14.0),
    displayLarge: TextStyle(fontFamily: 'IRANSansX', fontSize: 32.0, fontWeight: FontWeight.bold),
    displayMedium: TextStyle(fontFamily: 'IRANSansX', fontSize: 24.0, fontWeight: FontWeight.bold),
    labelLarge: TextStyle(fontFamily: 'IRANSansX', fontSize: 16.0, fontWeight: FontWeight.bold),
  ),
);
