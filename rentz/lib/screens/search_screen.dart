import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../screens/Components/appbar.dart';
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
      appBar: appbar,
      body: Stack(
        children: [
          ListView.builder(
            padding: EdgeInsets.only(top: 70.0),
            scrollDirection: Axis.vertical,
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              // Destination destination = destinations[index];
              return GestureDetector(
                onTap: () {
                  print('Tapped');
                },
                child: Container(
                  margin: EdgeInsets.all(10.0),
                  height: 500,
                  width: double.infinity,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              offset: Offset(0.0, 2.0),
                              spreadRadius: 4,
                              blurRadius: 6.0,
                            ),
                          ],
                        ),
                        child: Stack(
                          children: <Widget>[
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20.0),
                              child: Image(
                                height: 500.0,
                                // width: 180.0,
                                image: NetworkImage(
                                    'https://picsum.photos/200/300'),
                                fit: BoxFit.cover,
                              ),
                            ),
                            Positioned(
                              right: 20.0,
                              top: 30.0,
                              child: Container(
                                padding:
                                    EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
                                decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(0.5),
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                child: Row(
                                  children: [
                                    Icon(
                                      FontAwesomeIcons.mapPin,
                                      size: 18.0,
                                      color: Colors.red,
                                    ),
                                    SizedBox(width: 5),
                                    Text(
                                      'Maps',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              left: 20.0,
                              bottom: 30.0,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    width: 200,
                                    child: Text(
                                      'Black Modern House',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 24.0,
                                        fontWeight: FontWeight.w600,
                                        letterSpacing: 1.2,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 2,
                                    ),
                                  ),
                                  SizedBox(height: 20.0),
                                  Text(
                                    'Broadway Street, New york',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              right: 20.0,
                              bottom: 30.0,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
                                    width: 40,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: Theme.of(context).primaryColor,
                                      borderRadius: BorderRadius.circular(50.0),
                                    ),
                                    alignment: Alignment.center,
                                    child: IconButton(
                                      icon: Icon(
                                        FontAwesomeIcons.solidHeart,
                                        color: Colors.white,
                                        size: 20,
                                      ),
                                      onPressed: () {},
                                    ),
                                  ),
                                  SizedBox(height: 7),
                                  Container(
                                    child: Text(
                                      '\$30',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      'per day',
                                      style: TextStyle(
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(10.0),
                  child: TextField(
                    autocorrect: true,
                    decoration: InputDecoration(
                      hintText: 'Search',
                      prefixIcon: Icon(
                        Icons.search,
                        color: Theme.of(context).primaryColor,
                      ),
                      hintStyle: TextStyle(color: Colors.grey),
                      filled: true,
                      fillColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                        borderSide: BorderSide.none,
                        // BorderSide(color: Theme.of(context).primaryColor, width: 2),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(
                            color: Theme.of(context).primaryColor, width: 2),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  right: 15.0,
                  top: 15.0,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                    ),
                    child: IconButton(
                      icon: Icon(Icons.import_export),
                      color: Colors.white,
                      onPressed: () {},
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      drawer: SafeArea(
        child: Drawer(
          child: SideDrawer(),
        ),
      ),
    );
  }
}
