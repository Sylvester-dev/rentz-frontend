import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rentz/screens/Components/login_form.dart';
import '../constant.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                SvgPicture.asset(
                  circlex,
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              'Welcome Back !!',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Image.asset('assets/images/bus.jpg'),
            LoginForm(),
          ],
        ),
      ),
    );
  }
}
