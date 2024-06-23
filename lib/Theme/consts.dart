import 'package:flutter/material.dart';

// Color constants (unchanged names)
const Color avalie = Color(0xFF0B0B0B);
const Color sanavie = Color(0xFFFF6913);
const Color textSanavie = Color(0xFF434343);
const Color sefid = Colors.white;
const Color gray = Color(0xFF8C8C8C);
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

// Light theme
final lightTheme = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    primary: Color.fromARGB(255, 52, 123, 254),
    secondary: Color.fromARGB(255, 132, 101, 255),
    error: Color(0xFFEC1B1B),
    surface: Colors.white,
    onPrimary: Colors.grey,
    onSecondary: Colors.grey,
    onError: Colors.red,
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

// Dark theme
final darkTheme = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    primary: Color(0xFF397EFC),
    secondary: Color(0xFF03F7FF),
    error: Colors.red,
    surface: Colors.black,
    onPrimary: Colors.black,
    onSecondary: Colors.black,
    onError: Colors.red,
    
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
