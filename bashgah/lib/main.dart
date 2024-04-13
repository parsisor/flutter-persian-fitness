import 'package:fitness/Theme/theme_provider.dart';
import 'package:fitness/articles/view_page.dart';
import 'package:fitness/calculator/calculator.dart';
import 'package:fitness/select_app/homepage.dart';
import 'package:fitness/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
        home:SplashScreen(),
        theme: Provider.of<ThemeProvider>(context).themeData,
      ),
    );
  }
}
