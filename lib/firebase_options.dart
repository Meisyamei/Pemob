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
    apiKey: 'AIzaSyC3iX65GtcCfYM8-5UWlWXCF12pRyEPKz8',
    appId: '1:539211901154:web:02c6659a51e397b4f096bb',
    messagingSenderId: '539211901154',
    projectId: 'pemob-9882d',
    authDomain: 'pemob-9882d.firebaseapp.com',
    storageBucket: 'pemob-9882d.firebasestorage.app',
    measurementId: 'G-TBJ7E4DVEY',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDjSnSAEl5tngySqNCexF7TbCHegHwE364',
    appId: '1:539211901154:android:d28184c90a7a64f0f096bb',
    messagingSenderId: '539211901154',
    projectId: 'pemob-9882d',
    storageBucket: 'pemob-9882d.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCur5-NZzXidFMVX2AfMF-e5sOBCL7ERWw',
    appId: '1:539211901154:ios:ca0e9c1adff02297f096bb',
    messagingSenderId: '539211901154',
    projectId: 'pemob-9882d',
    storageBucket: 'pemob-9882d.firebasestorage.app',
    iosBundleId: 'my.id.meisya.uts',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCur5-NZzXidFMVX2AfMF-e5sOBCL7ERWw',
    appId: '1:539211901154:ios:ca0e9c1adff02297f096bb',
    messagingSenderId: '539211901154',
    projectId: 'pemob-9882d',
    storageBucket: 'pemob-9882d.firebasestorage.app',
    iosBundleId: 'my.id.meisya.uts',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyC3iX65GtcCfYM8-5UWlWXCF12pRyEPKz8',
    appId: '1:539211901154:web:cdb4f80e80948faaf096bb',
    messagingSenderId: '539211901154',
    projectId: 'pemob-9882d',
    authDomain: 'pemob-9882d.firebaseapp.com',
    storageBucket: 'pemob-9882d.firebasestorage.app',
    measurementId: 'G-1CC1Z4LZES',
  );
}