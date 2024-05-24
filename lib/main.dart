import 'package:Zerang/fitness_hub/fitness_hub.dart';
import 'package:Zerang/sign_in/sign_in_UI.dart';
import 'package:Zerang/sign_in/sign_in_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:Zerang/Theme/theme_provider.dart';
import 'package:Zerang/splash_screen/splash_screen.dart';
import 'package:Zerang/select_app/homepage.dart';

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
        home: SignInPage_ui(),
        theme: Provider.of<ThemeProvider>(context).themeData,
      ),
    );
  }
}
