// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyBrzuILAe1Zsps8-ri7qUV5ekWpXI4XGvQ',
    appId: '1:607278737808:web:26e0241fba72d5aa1aab15',
    messagingSenderId: '607278737808',
    projectId: 'flutterapp-f00eb',
    authDomain: 'flutterapp-f00eb.firebaseapp.com',
    storageBucket: 'flutterapp-f00eb.appspot.com',
    measurementId: 'G-6G3LHS2F3N',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAXMptudh3-yXySMTKAzaVXTH9wReO5kIg',
    appId: '1:607278737808:android:4f90d17c1c9bf00e1aab15',
    messagingSenderId: '607278737808',
    projectId: 'flutterapp-f00eb',
    storageBucket: 'flutterapp-f00eb.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAV6MsLGmz3M0fffUcF7ACbp4lU9ebY6dk',
    appId: '1:607278737808:ios:06744f359c36e0a01aab15',
    messagingSenderId: '607278737808',
    projectId: 'flutterapp-f00eb',
    storageBucket: 'flutterapp-f00eb.appspot.com',
    iosClientId: '607278737808-hg1hkq57jjcqvgg7s0jp1jiuel9m81ic.apps.googleusercontent.com',
    iosBundleId: 'com.example.thirdApplication',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAV6MsLGmz3M0fffUcF7ACbp4lU9ebY6dk',
    appId: '1:607278737808:ios:06744f359c36e0a01aab15',
    messagingSenderId: '607278737808',
    projectId: 'flutterapp-f00eb',
    storageBucket: 'flutterapp-f00eb.appspot.com',
    iosClientId: '607278737808-hg1hkq57jjcqvgg7s0jp1jiuel9m81ic.apps.googleusercontent.com',
    iosBundleId: 'com.example.thirdApplication',
  );
}