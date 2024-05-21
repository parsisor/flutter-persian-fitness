import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:Zerang/Theme/theme_provider.dart';
import 'package:Zerang/splash_screen/splash_screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
        theme: Provider.of<ThemeProvider>(context).themeData,
      ),
    );
  }
}
