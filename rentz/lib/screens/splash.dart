import 'package:flutter/material.dart';
import 'package:rentz/utils/google_auth.dart';

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
    await Future.delayed(Duration(seconds: 1));
    bool isSignedIn = await googleAuth.googleSignIn.isSignedIn();
    if (isSignedIn)
      Navigator.of(context).pushNamed('/home');
    else {
      Navigator.of(context).pushNamed('/login');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: Center(
          child: Image.asset(
            'assets/icons/icon.png',
            height: 150,
            width: 150,
          ),
        ),
      ),
    );
  }
}
