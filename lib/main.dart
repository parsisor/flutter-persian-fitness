import 'package:Zerang/workouts/workoutsplus/workout_page.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:Zerang/Theme/theme_provider.dart';
import 'package:Zerang/splash_screen/splash_screen.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  print("Initializing Firebase...");

  // Initialize Firebase
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyA9nb0kCxJ-EALOSryZcXm7vks2FA-JdwQ",
      authDomain: "zerang-b8965.firebaseapp.com",
      projectId: "zerang-b8965",
      storageBucket: "zerang-b8965.appspot.com",
      messagingSenderId: "69137107981",
      appId: "1:69137107981:web:eaf54820c36142fa469944",
      measurementId: "G-1KSP3YV58K",
    ),
  );

  print("Firebase initialized successfully");

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
        home:  WorkoutPage(),
        theme: Provider.of<ThemeProvider>(context).themeData,
      ),
    );
  }
}
