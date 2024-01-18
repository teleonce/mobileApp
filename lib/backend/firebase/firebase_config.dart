import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyA_Ena-C9ngkGghRfb0pSe9Y4VZWFPai18",
            authDomain: "teleonce-ea51b.firebaseapp.com",
            projectId: "teleonce-ea51b",
            storageBucket: "teleonce-ea51b.appspot.com",
            messagingSenderId: "644805332654",
            appId: "1:644805332654:web:770879712c4ef00bd9e73f",
            measurementId: "G-M6HYK8W4WC"));
  } else {
    await Firebase.initializeApp();
  }
}
