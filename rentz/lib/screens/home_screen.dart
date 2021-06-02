import 'package:flutter/material.dart';
import '../constant.dart';
import '../screens/Components/ReusableCard.dart';
import '../screens/Components/IconContent.dart';
import '../screens/Components/appbar.dart';
import '../screens/Components/drawer.dart';
import '../screens/Components/searchBar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      appBar: appbar,
      body: Stack(
        children: [
          ListView(
            children: [
              Container(
                width: double.infinity,
                height: 80,
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      colour: Colors.white,
                      cardChild:
                          IconContent(icon: FontAwesomeIcons.car, label: 'Car'),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      colour: Colors.white,
                      cardChild: IconContent(
                          icon: FontAwesomeIcons.bicycle, label: 'Bike'),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      colour: Colors.white,
                      cardChild: IconContent(
                          icon: FontAwesomeIcons.school, label: 'Tent'),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      colour: Colors.white,
                      cardChild: IconContent(
                          icon: FontAwesomeIcons.carBattery,
                          label: 'Generator'),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      // onPress: () {
                      //   setState(() {
                      //   });
                      // },
                      colour: Colors.white,
                      cardChild: IconContent(
                          icon: FontAwesomeIcons.home, label: 'Home'),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      colour: Colors.white,
                      cardChild: IconContent(
                          icon: FontAwesomeIcons.wrench, label: 'Service'),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Text(
                "Popular Near You",
                textAlign: TextAlign.center,
                style: kLabelTextStyle,
              ),
              SizedBox(height: 10),
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  // padding: EdgeInsets.only(top: 10.0, bottom: 15.0),
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return Stack(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 5.0),
                          // height: 170.0,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Padding(
                            padding:
                                EdgeInsets.fromLTRB(140.0, 20.0, 20.0, 20.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Column(
                                      children: [
                                        Container(
                                          width: 100.0,
                                          child: Text(
                                            "Rowan Apartment",
                                            style: TextStyle(
                                              fontSize: 18.0,
                                              fontWeight: FontWeight.w600,
                                            ),
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 2,
                                          ),
                                        ),
                                        SizedBox(height: 10.0),
                                        Container(
                                          width: 100,
                                          child: Text(
                                            "Delhi Clock",
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                              color: Colors.grey,
                                            ),
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 1,
                                          ),
                                        ),
                                        SizedBox(height: 20.0),
                                        Container(
                                          // alignment: Alignment.bottomLeft,
                                          // padding: EdgeInsets.all(5.0),
                                          width: 100.0,
                                          // alignment: Alignment.center,
                                          child: Text(
                                            "4.0⭐",
                                            style: TextStyle(
                                                color: Theme.of(context)
                                                    .primaryColor),
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 1,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: <Widget>[
                                        Text(
                                          '\$30',
                                          style: TextStyle(
                                            color:
                                                Theme.of(context).primaryColor,
                                            fontSize: 22.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        Text(
                                          'per day',
                                          style: TextStyle(
                                            color: Colors.grey,
                                          ),
                                        ),
                                        SizedBox(height: 10.0),
                                        Container(
                                          margin: EdgeInsets.all(5.0),
                                          width: 40,
                                          height: 40,
                                          decoration: BoxDecoration(
                                            color:
                                                Theme.of(context).primaryColor,
                                            borderRadius:
                                                BorderRadius.circular(50.0),
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
                                      ],
                                    ),
                                  ],
                                ),

                                // _buildRatingStars(activity.rating),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          left: 30.0,
                          top: 15.0,
                          bottom: 15.0,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: Image(
                              width: 110.0,
                              image: NetworkImage(
                                  'https://tse3.mm.bing.net/th?id=OIP.OhOeTk2z5YyzIKyIkHsLcAHaFj&pid=Api&P=0&w=245&h=184'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.topCenter,
            child: SearchBar(),
          )
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
