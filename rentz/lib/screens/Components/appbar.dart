import 'package:flutter/material.dart';
import '../../constant.dart';

final appbar = AppBar(
  elevation: 0,
  backgroundColor: Color(0xffEEEEEE),
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
  title: Center(
      child: const Text(
    'Rentz',
    style: TextStyle(color: kgreen, fontWeight: FontWeight.bold),
  )),
  actions: <Widget>[
    IconButton(
      icon: const Icon(Icons.notifications),
      color: Color(0xff50C2C9),
      onPressed: () {
        // ScaffoldMessenger.of(context).showSnackBar(
        //     const SnackBar(content: Text('This is a notification')));
        print('Notification');
      },
    ),
  ],
);

