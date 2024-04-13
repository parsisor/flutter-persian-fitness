import 'package:fitness/Theme/theme_provider.dart';
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
<<<<<<< HEAD
        home: SplashScreen(),
=======
        home:SplashScreen(),
>>>>>>> e7c5ddd4eb703f6d7f424deeca8230acdbe493ee
        theme: Provider.of<ThemeProvider>(context).themeData,
      ),
    );
  }
}
