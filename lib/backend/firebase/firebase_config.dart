import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyAbWQ1qUOdxZtQJKMbjmH1cumf9c4HFcZs",
            authDomain: "voter-advice.firebaseapp.com",
            projectId: "voter-advice",
            storageBucket: "voter-advice.appspot.com",
            messagingSenderId: "959677958002",
            appId: "1:959677958002:web:15973ac9bb1de7f915ffeb",
            measurementId: "G-RGBR86XYNS"));
  } else {
    await Firebase.initializeApp();
  }
}
