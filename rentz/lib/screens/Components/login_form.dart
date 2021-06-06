import 'package:flutter/material.dart';
import 'package:rentz/screens/Components/pass_login.dart';
import 'package:rentz/screens/Components/profile.dart';
import 'package:rentz/screens/signup_screen.dart';
import '../../constant.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rentz/utils/urls.dart';
import 'package:http/http.dart' as http;
import 'package:google_sign_in/google_sign_in.dart';
import 'email_field.dart';
import 'dart:async';
import 'dart:convert';
import '../../utils/google_auth.dart';
import '../../utils/shared_preferances.dart';

Auth googleAuth = new Auth();
SP store = new SP();

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  GoogleSignInAccount _currentUser;
  GoogleSignInAuthentication auth;

  @override
  void initState() {
    super.initState();
    googleAuth.googleSignIn.onCurrentUserChanged
        .listen((GoogleSignInAccount account) {
      setState(() {
        _currentUser = account;
      });
    });
    googleAuth.googleSignIn.signInSilently().then((value) {
      if (_currentUser != null) {
        print("here");
        Navigator.of(context).pushNamed('/home');
      }
    });
  }

  Future<void> _signIn() async {
    try {
      await googleAuth.googleSignIn.signOut();
      _currentUser = await googleAuth.googleSignIn.signIn();
      if (_currentUser == null) {
        print("singin failed.");
      } else {
        Navigator.of(context).pushNamed('/home');
        auth = await _currentUser.authentication;
        final response = await http.post(
          Uri.parse("http://192.168.1.4:4000/auth/login/google/"),
          headers: {"access_token": auth.accessToken},
        );
        if (response.statusCode == 200) {
          Map tokens = json.decode(response.body);
          await saveInSharedPreferances(tokens);
        } else {
          await googleAuth.googleSignIn.signOut();
        }
      }
    } catch (error) {
      print(error);
    }
  }

  Future<void> _signOut() async {
    await googleAuth.googleSignIn.disconnect();
  }

  Future<void> saveInSharedPreferances(Map tokens) async {
    String key;
    key = "accessToken";
    await store.addStringToSP(key, tokens[key]);
    key = "refreshToken";
    await store.addStringToSP(key, tokens[key]);
    String val = await store.getStringValuesSP(key);
    print(val);
    // store them in shared preference
  }

  final _formKey = GlobalKey<FormState>();

  void addsignin() async {
    try {
      final response = await http.get(Uri.parse(Urls.signin));
      Map tokens = json.decode(response.body);
      await saveInSharedPreferances(tokens);
      Navigator.of(context).pushNamed('/home');
    } catch (error) {
      print(error);
    }
  }

  void _formsave() {
    bool valid = _formKey.currentState.validate();
    if (!valid) {
      return;
    }
    _formKey.currentState.save();
    addsignin();
    print(User.email);
    print(User.password);
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          EmailField(),
          SizedBox(height: 18),
          PassLogin(),
          SizedBox(height: 24),
          Container(
            height: 47,
            width: 274,
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.all(Radius.circular(100)),
            ),
            child: FlatButton(
              onPressed: () => _formsave(),
              color: Theme.of(context).primaryColor,
              child: Text(
                'Log In',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ),
          TextButton(
            onPressed: () => {},
            child: const Text(
              'Forget Password ?',
              style: TextStyle(color: kprimarytheme),
            ),
          ),
          Row(
            children: [
              SizedBox(width: 105),
              Text('Dont have an account ?'),
              TextButton(
                onPressed: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignupScreen()),
                  ),
                },
                child: const Text(
                  'Sign Up',
                  style: TextStyle(color: kprimarytheme),
                ),
              ),
            ],
          ),
          Text(
            'OR',
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: GestureDetector(
                onTap: _signIn,
                child: Icon(
                  FontAwesomeIcons.googlePlusG,
                  color: Colors.red,
                  size: 24,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: IconButton(
                onPressed: () => {_signOut()},
                icon: Icon(
                  FontAwesomeIcons.facebook,
                  color: Colors.blue,
                  size: 24,
                ),
              ),
            ),
          ])
        ],
      ),
    );
  }
}
