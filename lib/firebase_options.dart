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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAPJeSum2_2dU88LHtYn87nYrzhlpORyHM',
    appId: '1:437749029828:android:cbcaebc83e3cf0f0532291',
    messagingSenderId: '437749029828',
    projectId: 'to-do-list-3e1b4',
    storageBucket: 'to-do-list-3e1b4.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDkDsQBYR__l8W1AKdPcZbbg9yVN-ufRyo',
    appId: '1:437749029828:ios:2c151eb1b6556807532291',
    messagingSenderId: '437749029828',
    projectId: 'to-do-list-3e1b4',
    storageBucket: 'to-do-list-3e1b4.firebasestorage.app',
    iosBundleId: 'com.example.toDoList',
  );

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCQSZ3oT6tu-dWjGj404j6Ah5c7femPVjs',
    appId: '1:437749029828:web:a222e4ece6e471d3532291',
    messagingSenderId: '437749029828',
    projectId: 'to-do-list-3e1b4',
    authDomain: 'to-do-list-3e1b4.firebaseapp.com',
    storageBucket: 'to-do-list-3e1b4.firebasestorage.app',
  );

}