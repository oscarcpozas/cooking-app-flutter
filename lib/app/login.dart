import 'dart:async';
import 'package:flutter/material.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class CookingLogin extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => new CookingLoginState();

}

class CookingLoginState extends State<CookingLogin> {

  final FirebaseAuth authService = FirebaseAuth.instance;
  final GoogleSignIn googleSignIn = new GoogleSignIn();

  Future<String> _signInWithGoogle() async {
    GoogleSignInAccount googleUser = await googleSignIn.signIn();
    return 'signInWithGoogle succeeded: $googleUser';
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new FlatButton(onPressed: () {
        setState(() {
          _signInWithGoogle();
        });
      }, child: new Center(child: new Text("Login")))
    );
  }
}