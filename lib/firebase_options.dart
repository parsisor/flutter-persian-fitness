// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        return windows;
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyD3cMNl3lfe21u6drjLvMcaXdBFkQZuTBI',
    appId: '1:465473215123:web:6837c20d14868d6c2c8b66',
    messagingSenderId: '465473215123',
    projectId: 'zerang-92999',
    authDomain: 'zerang-92999.firebaseapp.com',
    storageBucket: 'zerang-92999.appspot.com',
    measurementId: 'G-6D5V5EFTKD',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAnYIwrIrFSPVaYACqGVwwc4uhFZ1aid8c',
    appId: '1:465473215123:android:63d2fffabdf60e142c8b66',
    messagingSenderId: '465473215123',
    projectId: 'zerang-92999',
    storageBucket: 'zerang-92999.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD7PDoe0kTRPZTbI3KHwt5RyYu7892cpb8',
    appId: '1:465473215123:ios:f5ee1a7fd6c3b2f42c8b66',
    messagingSenderId: '465473215123',
    projectId: 'zerang-92999',
    storageBucket: 'zerang-92999.appspot.com',
    iosBundleId: 'com.example.bashgah',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD7PDoe0kTRPZTbI3KHwt5RyYu7892cpb8',
    appId: '1:465473215123:ios:f5ee1a7fd6c3b2f42c8b66',
    messagingSenderId: '465473215123',
    projectId: 'zerang-92999',
    storageBucket: 'zerang-92999.appspot.com',
    iosBundleId: 'com.example.bashgah',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyD3cMNl3lfe21u6drjLvMcaXdBFkQZuTBI',
    appId: '1:465473215123:web:2de8440264133a162c8b66',
    messagingSenderId: '465473215123',
    projectId: 'zerang-92999',
    authDomain: 'zerang-92999.firebaseapp.com',
    storageBucket: 'zerang-92999.appspot.com',
    measurementId: 'G-35CPYNFLVC',
  );
}
