import 'package:brew_crew/models/user.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // create user obj based on FirebaseUser

  UserClass? _userFromFirebaseUser(User user)
  {
    return user != null ? UserClass(uid: user.uid) : null;
  }

  //sign in anonymously
  Future signInAnon() async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      User? user = result.user;
      return _userFromFirebaseUser(user!);
    }

    catch (e)
    {
      print(e.toString());
      return null;
    }
  }

  //sign in with email and password

  // register with email and password

  //sign out
}