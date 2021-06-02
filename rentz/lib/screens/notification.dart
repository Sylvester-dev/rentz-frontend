import 'package:flutter/material.dart';
import 'package:rentz/constant.dart';
import 'package:rentz/screens/Components/noti_box.dart';

class Noti extends StatefulWidget {
  @override
  _NotiState createState() => _NotiState();
}

class _NotiState extends State<Noti> {
  List<NotiBox> notify = [
    NotiBox(
        msg: 'your booking is confirmed',
        product: 'Rovan Appartment',
        timer: '5m ago'),
    NotiBox(
        msg: 'your booking is confirmed',
        product: 'Rovan Appartment',
        timer: '5m ago'),
    NotiBox(
        msg: 'your booking is confirmed',
        product: 'Rovan Appartment',
        timer: '5m ago'),
    NotiBox(
        msg: 'your booking is confirmed',
        product: 'Rovan Appartment',
        timer: '5m ago'),
    NotiBox(
        msg: 'your booking is confirmed',
        product: 'Rovan Appartment',
        timer: '5m ago'),
    NotiBox(
        msg: 'your booking is confirmed',
        product: 'Rovan Appartment',
        timer: '5m ago'),
    NotiBox(
        msg: 'your booking is confirmed',
        product: 'Rovan Appartment',
        timer: '5m ago'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      appBar: AppBar(
          backgroundColor: Colors.white,
          title: Center(
            child: Text(
              'Notification',
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
                const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
            child: FlatButton(
              onPressed: ()=> {},
                          child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          top: 20,
                          left: 20,
                          child: Icon(
              Icons.book,
              color: Theme.of(context).primaryColor,
                          ),
                        ),
                        Positioned(
                          top: 20,
                          left: 60,
                          child: Text(
              '${notify[index].msg}',
              style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Positioned(
                          top: 40,
                          left: 60,
                          child: Text(
              '${notify[index].product}',
                          ),
                        ),
                        Positioned(
                          bottom: 20,
                          left: 60,
                          child: Text(
              '${notify[index].timer}',
              style: TextStyle(fontSize: 10, color: Colors.black54),
                          ),
                        ),
                        Positioned(
                          top: 9,
                          right: 10,
                          child: IconButton(
              icon: Icon(Icons.close),
              color: Theme.of(context).primaryColor,
              onPressed: () => {},
                          ),
                        )
                      ],
                    )),
            ),
          );
        },
      ),
    );
  }
}
