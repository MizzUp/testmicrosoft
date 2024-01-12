import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCskc12l6J1PF6Sp1QReRVM2p9VE9ZvnBg",
            authDomain: "test-qorqrk.firebaseapp.com",
            projectId: "testmicrosoft-qorqrk",
            storageBucket: "testmicrosoft-qorqrk.appspot.com",
            messagingSenderId: "637098807708",
            appId: "1:637098807708:web:5861a31a554710353cb859"));
  } else {
    await Firebase.initializeApp();
  }
}
