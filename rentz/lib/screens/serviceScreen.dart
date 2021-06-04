import 'package:flutter/material.dart';
import 'package:rentz/screens/Components/appbar.dart';
import 'package:rentz/screens/Components/drawer.dart';
import '../demo_data/services.dart';
import './Components/ReusableCard.dart';

class Service extends StatelessWidget {
  const Service({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      appBar: appbar,
      body: GridView.count(
        crossAxisCount: 3,
        crossAxisSpacing: 2.0,
        mainAxisSpacing: 2.0,
        children: List.generate(service.length, (index) {
          return Center(
            child: ReusableCard(
              service: service[index],
            ),
          );
        }),
      ),
      drawer: SafeArea(
        child: Drawer(
          child: SideDrawer(),
        ),
      ),
    );
  }
}
