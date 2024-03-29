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

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyAlOfpKkuXOP7h-mvp69OB2e_Z7IqNsMd4',
    appId: '1:226842839719:web:5d762472a028185a0c6982',
    messagingSenderId: '226842839719',
    projectId: 'ecommerceapp-b5efc',
    authDomain: 'ecommerceapp-b5efc.firebaseapp.com',
    storageBucket: 'ecommerceapp-b5efc.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDrsZ8ijaS4D0l9ng8208A2bsxAjJ6EGOY',
    appId: '1:226842839719:android:4655bb58274575ec0c6982',
    messagingSenderId: '226842839719',
    projectId: 'ecommerceapp-b5efc',
    storageBucket: 'ecommerceapp-b5efc.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAzaE-XcPR6RYhwD8jyYqHqwgZ9RFdvcFw',
    appId: '1:226842839719:ios:d5b532f7f3ca60bc0c6982',
    messagingSenderId: '226842839719',
    projectId: 'ecommerceapp-b5efc',
    storageBucket: 'ecommerceapp-b5efc.appspot.com',
    androidClientId: '226842839719-mn1knhjdlk54oispdbnl1hjevg2o0adc.apps.googleusercontent.com',
    iosClientId: '226842839719-hfpol4t9nh6js92gsv51mposk1mv80lu.apps.googleusercontent.com',
    iosBundleId: 'com.example.tStore',
  );
}
