import 'package:flutter/material.dart';
import 'package:rentz/constant.dart';

class Booking extends StatefulWidget {
  @override
  _BookingState createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  List<String> notify = ['first', 'second', 'thrid','f','f','f'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      appBar: AppBar(
          backgroundColor: Colors.white,
          title: Center(
            child: Text(
              'Your Bookings',
              style: TextStyle(
                  fontSize: 18,
                  color: kprimarytheme,
                  fontWeight: FontWeight.bold),
            ),
          )),
      body: ListView.builder(
        itemCount: notify.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding:
                const EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
            child: FlatButton(
              onPressed: () => {print('work')},
              child: Container(
                  width: 370,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                          top: 20,
                          left: 20,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: Image.network(
                              'https://tse3.mm.bing.net/th?id=OIP.OhOeTk2z5YyzIKyIkHsLcAHaFj&pid=Api&P=0&w=245&h=184',
                              height: 100,
                              width: 100,
                            ),
                          )),
                      Positioned(
                        top: 30,
                        left: 140,
                        child: Text(
                          'Rovan Appartment',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                      ),
                      Positioned(
                        top: 55,
                        left: 140,
                        child: Text(
                          'Delhi chock, Delhi',
                          style:
                              TextStyle(color: Theme.of(context).primaryColor),
                        ),
                      ),
                      Positioned(
                        top: 94,
                        left: 140,
                        child: Text(
                          'Booked on: 27/05/2021',
                          style: TextStyle(color: Colors.black54, fontSize: 12),
                        ),
                      ),
                      Positioned(
                        bottom: 2,
                        left: 150,
                        child: IconButton(
                          icon: Icon(Icons.expand_more),
                          onPressed: () => {},
                        ),
                      ),
                    ],
                  )),
            ),
          );
        },
      ),
    );
  }
}
