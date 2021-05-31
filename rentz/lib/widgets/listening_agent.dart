import 'package:flutter/material.dart';

class ListeningAgent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          padding: EdgeInsets.fromLTRB(0, 18, 0, 10),
          child: Text(
            "Listening Agent",
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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(right: 10),
                  child: ClipOval(
                    child: Image.network(
                      "https://picsum.photos/200/300?random=1",
                      fit: BoxFit.cover,
                      height: 40,
                      width: 40,
                    ),
                    // backgroundColor: Colors.transparent,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        "Ananya Tiwari",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 16),
                      ),
                    ),
                    Container(
                      child: Text(
                        "Owner",
                        style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 40),
                  child: GestureDetector(
                    child: Icon(
                      Icons.message,
                      size: 30,
                      color: Theme.of(context).primaryColor,
                    ),
                    onTap: () {},
                  ),
                ),
                Container(
                  // margin: EdgeInsets.only(right: 15),
                  child: GestureDetector(
                    child: Icon(
                      Icons.phone,
                      size: 30,
                      color: Theme.of(context).primaryColor,
                    ),
                    onTap: () {},
                  ),
                )
              ],
            ),
          ],
        ),
      ],
    );
  }
}
