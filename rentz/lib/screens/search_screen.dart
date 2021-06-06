import 'package:flutter/material.dart';
import 'package:rentz/screens/Components/big_card.dart';
import 'package:rentz/screens/search.dart';
import '../screens/Components/drawer.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Color(0xffEEEEEE),
        leadingWidth: 30,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.arrow_back_sharp),
              color: Color(0xff50C2C9),
              onPressed: () => Navigator.of(context).pop(),
            );
          },
        ),
        title: SearchAppBar(),
        actions: [
          Icon(Icons.camera_alt),
          SizedBox(width: 20),
          Icon(Icons.mic_rounded),
          SizedBox(width: 10),
        ],
      ),
      body: Stack(
        children: [
          ListView.builder(
            // padding: EdgeInsets.only(top: 70.0),
            scrollDirection: Axis.vertical,
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              // Destination destination = destinations[index];
              return BigCard();
            },
          ),
        ],
      ),
      bottomNavigationBar: Container(
          height: 55,
          padding: EdgeInsets.only(top: 8, bottom: 8),
          child: Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width / 2 - 8,
                child: GestureDetector(
                    onTap: () {
                      print("sort");
                    },
                    child: Center(
                      child: Text("SORT"),
                    )),
              ),
              VerticalDivider(),
              Container(
                width: MediaQuery.of(context).size.width / 2 - 8,
                child: GestureDetector(
                    onTap: () {
                      print("filter");
                    },
                    child: Center(
                      child: Text(
                        "FILTER",
                      ),
                    )),
              )
            ],
          )),
      drawer: SafeArea(
        child: Drawer(
          child: SideDrawer(),
        ),
      ),
    );
  }
}
