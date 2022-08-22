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
    apiKey: 'AIzaSyBuvDyELuR2yu7HgYTTRZ5Xgzb2w3TqJcc',
    appId: '1:376714589568:web:0b0c0de71bae9acc263d65',
    messagingSenderId: '376714589568',
    projectId: 'platzitripsflutter-be5e6',
    authDomain: 'platzitripsflutter-be5e6.firebaseapp.com',
    databaseURL: 'https://platzitripsflutter-be5e6-default-rtdb.firebaseio.com',
    storageBucket: 'platzitripsflutter-be5e6.appspot.com',
    measurementId: 'G-JPYMZHP6GX',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBsofrxBMO4OKQ9UOavv7zJMLCfOv0WeAE',
    appId: '1:376714589568:android:616d0c5945c10514263d65',
    messagingSenderId: '376714589568',
    projectId: 'platzitripsflutter-be5e6',
    databaseURL: 'https://platzitripsflutter-be5e6-default-rtdb.firebaseio.com',
    storageBucket: 'platzitripsflutter-be5e6.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD5tJ24bx5BA8igtZ5Kn1-AkKsKhdUAuiM',
    appId: '1:376714589568:ios:3ee9d2311bb079f2263d65',
    messagingSenderId: '376714589568',
    projectId: 'platzitripsflutter-be5e6',
    databaseURL: 'https://platzitripsflutter-be5e6-default-rtdb.firebaseio.com',
    storageBucket: 'platzitripsflutter-be5e6.appspot.com',
    iosClientId: '376714589568-mcdgrt79bq3obvst4vqn9hn9rh9e6d21.apps.googleusercontent.com',
    iosBundleId: 'com.example.demoTripsApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD5tJ24bx5BA8igtZ5Kn1-AkKsKhdUAuiM',
    appId: '1:376714589568:ios:3ee9d2311bb079f2263d65',
    messagingSenderId: '376714589568',
    projectId: 'platzitripsflutter-be5e6',
    databaseURL: 'https://platzitripsflutter-be5e6-default-rtdb.firebaseio.com',
    storageBucket: 'platzitripsflutter-be5e6.appspot.com',
    iosClientId: '376714589568-mcdgrt79bq3obvst4vqn9hn9rh9e6d21.apps.googleusercontent.com',
    iosBundleId: 'com.example.demoTripsApp',
  );
}
