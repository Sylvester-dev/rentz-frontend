import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProductTile extends StatelessWidget {
  var kgreen = const Color(0xff50C2C9);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          margin: EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 5.0),
          height: 170.0,
          width: MediaQuery.of(context).size.width - 40,
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
                          icon: Icon(
                            FontAwesomeIcons.solidHeart,
                            color: Colors.white,
                          ),
                          onPressed: () {},
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
  }
}
