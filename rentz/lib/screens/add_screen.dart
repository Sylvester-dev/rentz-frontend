import 'package:flutter/material.dart';
import 'package:rentz/screens/Components/new_ad.dart';

class MyAdd extends StatefulWidget {
  @override
  _MyAddState createState() => _MyAddState();
}

class _MyAddState extends State<MyAdd> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffEEEEEE),
          leadingWidth: 50,
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.arrow_back_sharp),
                color: Color(0xff50C2C9),
                onPressed: () => Navigator.of(context).pushNamed('/home'),
              );
            },
          ),
          bottom: TabBar(
            onTap: (index) {
              // Tab index when user select it, it start from zero
            },
            tabs: [
              Tab(
                child: Text(
                  'NEW AD',
                  style: TextStyle(
                    color: Colors.black87,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'ADS',
                  style: TextStyle(
                    color: Colors.black87,
                  ),
                ),
              ),
            ],
          ),
          title: Text(
            'My Ads',
            style: TextStyle(color: Theme.of(context).primaryColor),
          ),
        ),
        body: TabBarView(
          children: [
            Center(child: NewAd()),
            Center(
                child: Text(
              "Empty!!!",
              style: TextStyle(fontSize: 40),
            )),
          ],
        ),
      ),
    );
  }
}
