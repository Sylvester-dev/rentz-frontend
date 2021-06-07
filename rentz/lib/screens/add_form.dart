import 'package:flutter/material.dart';
import 'package:rentz/screens/Components/new_adForm.dart';

class AddForm extends StatefulWidget {
  @override
  _AddFormState createState() => _AddFormState();
}

class _AddFormState extends State<AddForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffEEEEEE),
        leadingWidth: 50,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.arrow_back_sharp),
              color: Color(0xff50C2C9),
              onPressed: () => Navigator.pop(context),
            );
          },
        ),
        title: Text(
          'Include some details',
          style: TextStyle(color: Theme.of(context).primaryColor),
        ),
      ),
      body: AdForm(),
    );
  }
}


