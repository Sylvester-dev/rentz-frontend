import 'package:flutter/material.dart';
import 'package:rentz/screens/Components/pass_login.dart';
import 'package:rentz/screens/Components/profile.dart';
import 'package:rentz/screens/signup_screen.dart';
import '../../constant.dart';
import 'package:rentz/utils/urls.dart';
import 'package:http/http.dart' as http;
import 'email_field.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();

  void addsignin() async {
    try {
      final response = await http.get(Uri.parse(Urls.signin));
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
              color: kprimarytheme,
              borderRadius: BorderRadius.all(Radius.circular(100)),
            ),
            child: ElevatedButton(
              onPressed: () => _formsave(),
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
          )
        ],
      ),
    );
  }
}
