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

  static Future<bool> createAccount(String email, String password) async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      return true;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
      return false;
    }
    return false;
  }
}
