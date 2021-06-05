import 'package:flutter/material.dart';

class SearchAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          child: TextField(
            autofocus: true,
            autocorrect: true,
            decoration: InputDecoration(
              hintText: 'Search for services',
              border: InputBorder.none,
              hintStyle: TextStyle(color: Colors.grey),
              filled: true,
              fillColor: Color(0xffEEEEEE),
            ),
          ),
        ),
      ],
    );
  }
}
