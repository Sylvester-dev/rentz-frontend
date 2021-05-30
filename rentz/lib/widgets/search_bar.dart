import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  final kgreen = const Color(0xff50C2C9);
  @override
  Widget build(BuildContext context) {
    return Container(
            width: double.infinity,
            padding: EdgeInsets.all(10.0),
            child: TextField(
              autocorrect: true,
              decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: Icon(
                  Icons.search,
                  color: kgreen,
                ),
                hintStyle: TextStyle(color: Colors.grey),
                filled: true,
                fillColor: Colors.white,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12.0)),
                  borderSide: BorderSide(color: kgreen, width: 2),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(color: kgreen, width: 2),
                ),
              ),
            ),
          );
  }
}