import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rentz/constant.dart';
import 'package:rentz/screens/Components/name_field.dart';
import 'package:rentz/screens/login_screen.dart';
import 'email_field.dart';
import 'package:rentz/screens/Components/profile.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../utils/create_user.dart';

class SignupForm extends StatefulWidget {
  @override
  _SignupFormState createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  final _signinkey = GlobalKey<FormState>();
  final _conpass = TextEditingController();
  void addsignup() async {
    try {
      var response = await UserRequest.createUser(User.name,User.email,User.password);
      print(response);
      SharedPreferences pref = await SharedPreferences.getInstance();
      pref.setString('name', User.name);
      pref.setString('password', User.password);
      pref.setString('email', User.email);
      print(pref.getString('name'));
      // get token from response.body or response.data and save it in share preference
    } catch (error) {
      print(error);
    }
  }

  void _savingsign() {
    bool valid = _signinkey.currentState.validate();
    if (!valid) {
      return null;
    }
    _signinkey.currentState.save();
    addsignup();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _signinkey,
      child: Column(
        children: [
          NameField(),
          SizedBox(height: 17),
          EmailField(),
          SizedBox(height: 17),
          Stack(children: [
            Center(
              child: Container(
                width: 274,
                height: 43,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 97),
              child: Container(
                width: 217,
                child: TextFormField(
                  controller: _conpass,
                  decoration: InputDecoration(
                    hintText: 'Enter password',
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                  ),
                  textInputAction: TextInputAction.next,
                  validator: (value) {
                    if (value.isEmpty)
                      return 'Provide an input';
                    else if (value.length < 8) {
                      return 'Password must have atleast 8 character';
                    }
                    return null;
                  },
                  obscureText: true,
                  onSaved: (value) => setState(() => {User.password = value}),
                ),
              ),
            ),
          ]),
          SizedBox(height: 17),
          Stack(children: [
            Center(
              child: Container(
                width: 274,
                height: 43,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 97),
              child: Container(
                width: 217,
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Confirm password',
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                  ),
                  obscureText: true,
                  textInputAction: TextInputAction.done,
                  validator: (value) {
                    if (value.isEmpty)
                      return 'Provide an input';
                    else if (value != _conpass.text) {
                      return 'Password are different';
                    }
                    return null;
                  },
                ),
              ),
            ),
          ]),
          SizedBox(height: 40),
          Container(
            height: 47,
            width: 274,
            decoration: BoxDecoration(
              color: kprimarytheme,
              borderRadius: BorderRadius.all(Radius.circular(100)),
            ),
            child: ElevatedButton(
              onPressed: () => {_savingsign()},
              child: Text(
                'Sign Up',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Already have an account ?'),
              TextButton(
                onPressed: () => {
                  Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LoginScreen()),
                  ),
                },
                child: const Text(
                  'Sign In',
                  style: TextStyle(color: kprimarytheme),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Text(
            'OR',
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: IconButton(
                onPressed: () => {},
                icon: Icon(
                  FontAwesomeIcons.facebook,
                  color: Colors.blue,
                  size: 24,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: IconButton(
                onPressed: () => {},
                icon: Icon(
                  FontAwesomeIcons.googlePlusG,
                  color: Colors.red,
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
