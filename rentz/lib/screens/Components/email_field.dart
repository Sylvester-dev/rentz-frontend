import 'package:flutter/material.dart';
import 'profile.dart';

class EmailField extends StatefulWidget {
  @override
  _EmailFieldState createState() => _EmailFieldState();
}

class _EmailFieldState extends State<EmailField> {
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
              hintText: 'Enter your email',
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
            onSaved: (value) => setState(() => {User.email = value}),
          ),
        ),
      ),
    ]);
  }
}
