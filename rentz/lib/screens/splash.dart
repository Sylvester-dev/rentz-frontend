import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:rentz/utils/google_auth.dart';
import 'package:rentz/utils/google_cred.dart';

enum AuthStatus { notSingIn, signedIn }

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  Auth googleAuth = Auth();
  @override
  void initState() {
    checksignInstatus();
    super.initState();
  }

  void checksignInstatus() async {
    await Future.delayed(Duration(seconds: 2));
    bool isSignedIn = await googleAuth.googleSignIn.isSignedIn();
    if (isSignedIn)
      Navigator.of(context).pushNamed('/home');
    else {
      Navigator.of(context).pushNamed('/login');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          Text('Welcome', style: TextStyle(fontSize: 30)),
          CircularProgressIndicator(),
        ],
      ),
    );
  }
}
