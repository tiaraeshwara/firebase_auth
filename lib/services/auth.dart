import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth_app/models/UserModel.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';      

class AuthServices {
 
 final FirebaseAuth _auth = FirebaseAuth.instance;

// create a user from uid
UserModel? _userWithFirebaseUserUid(User? user) {
  return user != null ? UserModel(uid: user.uid) : null;
}

Stream<UserModel?> get user {
  return _auth.authStateChanges().map(_userWithFirebaseUserUid);
  }

  // sign in anonymously
  Future signInAnonymously() async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      User? user = result.user;
      return _userWithFirebaseUserUid(user);
    } catch (err) {
      print(err.toString());
      return null;
    }
  }

  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch (err) {
      print(err.toString());
      return null;
    }
  }
}