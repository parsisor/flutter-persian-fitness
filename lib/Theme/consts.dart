import 'package:flutter/material.dart';

// Color constants (unchanged names)
const Color avalie = Color(0xFF0B0B0B);
const Color sanavie = Color(0xFFFF6913);
const Color textSanavie = Color(0xFF434343);
const Color sefid = Colors.white;
const Color gray = Color.fromARGB(255, 226, 226, 226);
const String calories = "۲۰۰";
const double boxwidth = 2.0;
const Color buttonColor = Color(0xFF4CC9F0); // Modified for consistency
const Color selectedButtonColor = Color(0xFF0077B6); // Modified for consistency
const Color white = Colors.white;
const Color black = Colors.black;
const Color containerColor1 = Color(0xFF397EFC);
const Color containerColor2 = Color(0xFF03F7FF);
const Color containerColor3 = Color(0xFFFF6591);
const Color containerColor4 = Color(0xFF9C5AFF);

const ColorScheme lightColorScheme = ColorScheme.light(
  brightness: Brightness.light,
  primary: selectedButtonColor,
  secondary: Colors.green,
  error: Colors.red,
  surface: Color.fromARGB(255, 224, 224, 224),
  onPrimary: Colors.white,
  onSecondary: Colors.white,
  onError: Colors.white,
  onSurface: Colors.black,
);

final ColorScheme darkColorScheme = ColorScheme.dark(
  brightness: Brightness.dark,
  primary: selectedButtonColor,
  secondary: Colors.lightGreen,
  error: Colors.red,
  surface: Colors.grey[800]!,
  onPrimary: Colors.black,
  onSecondary: Colors.black,
  onError: Colors.white,
  onSurface: Colors.white,
);

// Light theme
final lightTheme = ThemeData(
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

// Dark theme
final darkTheme = ThemeData(
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
