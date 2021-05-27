import 'package:flutter/material.dart';
import '../constant.dart';
import '../screens/Components/ReusableCard.dart';
import '../screens/Components/IconContent.dart';
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
      backgroundColor: Color(0xffEEEEEE),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xffEEEEEE),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.sort),
              color: kgreen,
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
            color: kgreen,
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('This is a notification')));
            },
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
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
                  color: kgreen,
                ),
                hintStyle: TextStyle(color: Colors.grey),
                filled: true,
                fillColor: Colors.white,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12.0)),
                  borderSide: BorderSide(color: kgreen, width: 2),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(color: kgreen, width: 2),
                ),
              ),
            ),
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
                  cardChild:
                      IconContent(icon: FontAwesomeIcons.school, label: 'Tent'),
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
                      icon: FontAwesomeIcons.carBattery, label: 'Generator'),
                ),
              ),
              Expanded(
                child: ReusableCard(
                  // onPress: () {
                  //   setState(() {
                  //   });
                  // },
                  colour: Colors.white,
                  cardChild:
                      IconContent(icon: FontAwesomeIcons.home, label: 'Home'),
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
            style: kLabelTextStyle,
          ),
          SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.only(top: 10.0, bottom: 15.0),
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                // Activity activity = widget.destination.activities[index];
                return Stack(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 5.0),
                      height: 170.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(140.0, 20.0, 20.0, 20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  width: 150.0,
                                  child: Text(
                                    "Rowan Apartment",
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                  ),
                                ),
                                Column(
                                  children: <Widget>[
                                    Text(
                                      '\$30',
                                      style: TextStyle(
                                        color: kgreen,
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
                                  ],
                                ),
                              ],
                            ),
                            Text(
                              "Delhi Clock",
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                            // _buildRatingStars(activity.rating),
                            SizedBox(height: 10.0),
                            Row(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.all(5.0),
                                  width: 70.0,
                                  // decoration: BoxDecoration(
                                  //   color: Theme.of(context).accentColor,
                                  //   borderRadius: BorderRadius.circular(10.0),
                                  // ),
                                  alignment: Alignment.center,
                                  child: Text(
                                    "4.0⭐",
                                    style: TextStyle(color: kgreen),
                                  ),
                                ),
                                SizedBox(width: 10.0),
                                Container(
                                    margin: EdgeInsets.all(5.0),
                                    width: 50,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      color: kgreen,
                                      borderRadius: BorderRadius.circular(50.0),
                                    ),
                                    alignment: Alignment.center,
                                    child: IconButton(
                                      icon: Icon(FontAwesomeIcons.solidHeart,color: Colors.white,),
                                      onPressed: (){},
                                    )),
                              ],
                            )
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
    );
  }
}
