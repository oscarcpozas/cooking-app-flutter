import 'dart:async';
import 'dart:io';
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

  Future<String> _testSignInWithGoogle() async {
    GoogleSignInAccount googleUser = await googleSignIn.signIn();
    GoogleSignInAuthentication googleAuth = await googleUser.authentication;
    FirebaseUser user = await authService.signInWithGoogle(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );
    assert(user.email != null);
    assert(user.displayName != null);
    return 'signInWithGoogle succeeded: $user';
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Login"),
      ),
      body: new FlatButton(onPressed: () {
        setState(() {
          _testSignInWithGoogle();
        });
      }, child: new Center(child: new Text("Login")))
    );
  }
}