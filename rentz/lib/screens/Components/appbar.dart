import 'package:flutter/material.dart';
import '../../constant.dart';

AppBar appbar(context) {
  return AppBar(
    elevation: 1,
    centerTitle: false,
    backgroundColor: Color(0xffEEEEEE),
    leadingWidth: 50,
    leading: Builder(
      builder: (BuildContext context) {
        return IconButton(
          icon: const Icon(Icons.sort),
          color: Color(0xff50C2C9),
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
        );
      },
    ),
    title: Container(
      // padding: EdgeInsets.only(left:10),
        child: const Text(
      'Rentz',
      style: TextStyle(color: kgreen, fontWeight: FontWeight.bold),
    )),
    actions: <Widget>[
      IconButton(
        icon: const Icon(Icons.search),
        color: Color(0xff50C2C9),
        onPressed: () {
          Navigator.of(context).pushNamed('/search');
        },
      ),
      IconButton(
        icon: const Icon(Icons.notifications_none),
        color: Color(0xff50C2C9),
        onPressed: () {
          Navigator.of(context).pushNamed('/noti');
        },
      ),
    ],
  );
}
