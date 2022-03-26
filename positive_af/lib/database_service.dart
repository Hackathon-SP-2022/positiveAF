import 'package:flutter/foundation.dart';
import 'package:firebase_auth/firebase_auth.dart';

class DatabaseService {

  
  static Future<bool> userLogin(String email, String password) async {
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      return true;
    } on FirebaseAuthException catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return false;
    }
  }
}