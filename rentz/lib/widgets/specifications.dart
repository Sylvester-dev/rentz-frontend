import 'package:flutter/material.dart';

class Specifications extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          padding: EdgeInsets.fromLTRB(0, 20, 0, 10),
          child: Text(
            "Specifcations",
            style: TextStyle(
              fontWeight: FontWeight.w800,
              fontSize: 16,
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Icon(
                  Icons.king_bed_rounded,
                  size: 40,
                  color: Theme.of(context).primaryColor,
                ),
                SizedBox(
                  width: 4,
                ),
                Text(
                  "3",
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.bathtub_sharp,
                  size: 40,
                  color: Theme.of(context).primaryColor,
                ),
                SizedBox(
                  width: 4,
                ),
                Text(
                  "3",
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.hot_tub,
                  size: 40,
                  color: Theme.of(context).primaryColor,
                ),
                SizedBox(
                  width: 4,
                ),
                Text(
                  "3",
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
