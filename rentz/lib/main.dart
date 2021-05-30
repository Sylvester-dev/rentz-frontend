import 'package:flutter/material.dart';
import 'package:rentz/screens/login_screen.dart';
import 'package:rentz/screens/home_screen.dart';

void main()
{
   runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      theme: ThemeData(
        primaryColor: Color(0xff50C2C9),
        accentColor: Color(0xffEEEEEE),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}