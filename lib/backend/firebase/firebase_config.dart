import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyAT1rfLsp7hB6rhZjW76gSadg5q2xX0fMc",
            authDomain: "jasoortest.firebaseapp.com",
            projectId: "jasoortest",
            storageBucket: "jasoortest.appspot.com",
            messagingSenderId: "562164802143",
            appId: "1:562164802143:web:1e903abfa8701003ccf1ea",
            measurementId: "G-K9KBTC8CKX"));
  } else {
    await Firebase.initializeApp();
  }
}
