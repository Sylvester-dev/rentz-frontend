import 'package:flutter/material.dart';

class ReusableCardHome extends StatelessWidget {
  ReusableCardHome({@required this.colour, this.cardChild,this.onPress});
  final Color colour;
  final Widget cardChild;
  final Function onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onPress,
      child: Container(
        height: 94,
        width: 94,
        child: cardChild,
        margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
