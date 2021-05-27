import 'package:flutter/material.dart';
import 'profile.dart';

class NameField extends StatefulWidget {
  @override
  _NameFieldState createState() => _NameFieldState();
}

class _NameFieldState extends State<NameField> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
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
              hintText: 'Enter your full name',
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
            ),
            textInputAction: TextInputAction.next,
            validator: (value) {
              if (value.isEmpty) return 'Provide an input';
              return null;
            },
            onSaved: (value) => setState(() => {User.name = value}),
          ),
        ),
      ),
    ]);
  }
}
