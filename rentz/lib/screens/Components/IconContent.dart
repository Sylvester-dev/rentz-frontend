import 'package:flutter/material.dart';
import 'package:rentz/constant.dart';

class IconContent extends StatelessWidget {
  const IconContent({this.icon, this.label});
  final IconData icon;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        IconButton(
          icon: Icon(icon, size: 30),
          color: kgreen,
          onPressed: () {
            //action on pressed
          },
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          label,
          textAlign: TextAlign.center,
          style: TextStyle(color: kgreen,fontSize: 14),
        ),
      ],
    );
  }
}
