import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:Zerang/Onboarding/onboarding_screen.dart';
import 'package:Zerang/Theme/theme_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter/services.dart'; // Import this for platform channels

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

    changeDNS();

  try {
    await Firebase.initializeApp(
      options: FirebaseOptions(
        apiKey: "AIzaSyD3cMNl3lfe21u6drjLvMcaXdBFkQZuTBI",
        authDomain: "zerang-92999.firebaseapp.com",
        projectId: "zerang-92999",
        storageBucket: "zerang-92999.appspot.com",
        messagingSenderId: "465473215123",
        appId: "1:465473215123:web:6837c20d14868d6c2c8b66",
        measurementId: "G-6D5V5EFTKD",
      ),
    );
    print("Firebase initialized successfully");
  } catch (e) {
    print("Error initializing Firebase: $e");
  }

  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}

// Method channel to change DNS
const platform = MethodChannel('dns_changer');

Future<void> changeDNS() async {
  try {
    final bool result = await platform.invokeMethod('changeDNS', {
      'primaryDNS': '8.8.8.8',
      'secondaryDNS': '8.8.4.4',
    });
    if (result) {
      print("DNS changed successfully to Google's DNS");
    } else {
      print("Failed to change DNS");
    }
  } on PlatformException catch (e) {
    print("Failed to change DNS: ${e.message}");
  } catch (e) {
    print("Unexpected error: $e");
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
            home: OnboardingScreen(),
            theme: themeProvider.themeData,
          );
        },
      ),
    );
  }
}
