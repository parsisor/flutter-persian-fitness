import 'package:flutter/foundation.dart';
import 'package:zerang/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:zerang/onboarding/onboarding_screen.dart';
import 'package:zerang/Theme/theme_provider.dart';
import 'package:provider/provider.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:flutter/services.dart';
import 'task.dart'; 

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();
  Hive.registerAdapter(TaskAdapter());
  await Hive.openBox<Task>('tasks');

  try {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: "AIzaSyD3cMNl3lfe21u6drjLvMcaXdBFkQZuTBI",
        authDomain: "zerang-92999.firebaseapp.com",
        projectId: "zerang-92999",
        storageBucket: "zerang-92999.appspot.com",
        messagingSenderId: "465473215123",
        appId: "1:465473215123:web:6837c20d14868d6c2c8b66",
        measurementId: "G-6D5V5EFTKD",
      ),
    );
    if (kDebugMode) {
      print("Firebase initialized successfully");
    }
  } catch (e) {
    if (kDebugMode) {
      print("Error initializing Firebase: $e");
    }
  }

  // DNS Changer
  await changeDNS();

  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}

// DNS Changer Function
Future<void> changeDNS() async {
  const platform = MethodChannel('com.example.app/dns');
  try {
    await platform.invokeMethod('changeDNS');
  } on PlatformException catch (e) {
    if (kDebugMode) {
      print("Failed to change DNS: '${e.message}'.");
    }
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Consumer<ThemeProvider>(
        builder: (context, themeProvider, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: const SplashScreen(),
            theme: themeProvider.themeData,
          );
        },
      ),
    );
  }
}
