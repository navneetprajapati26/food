import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:food/utils/showSnachBar.dart';

class FirebaseAuthMethods {
  final FirebaseAuth _auth;
  FirebaseAuthMethods(this._auth);
  //email sign up
  Future<void> sighUpWithEmail({
    required String email,
    required String password,
    required BuildContext context,
  }) async {
    try{
      await _auth.createUserWithEmailAndPassword(
          email: email,
          password: password
      );
    }on FirebaseAuthException catch(e){
      ShowSnackBar(context,e.message!);
    }
  }
}
