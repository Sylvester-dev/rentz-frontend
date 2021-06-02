import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../constant.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ReferEarn extends StatefulWidget {
  @override
  _ReferEarnState createState() => _ReferEarnState();
}

class _ReferEarnState extends State<ReferEarn> {
  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(children: [
        Container(
          height: 3 * (_height / 8),
          width: MediaQuery.of(context).size.width,
          color: kprimarytheme.withAlpha(240),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: _height / 8,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text(
                  'Refer and Earn',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
                ),
              ),
              SizedBox(
                height: _height / 24,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text(
                  'refer to your friends to get discount ',
                  style: TextStyle(fontSize: 12),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text(
                  'upto 50% on booking',
                  style: TextStyle(fontSize: 12),
                ),
              ),
              SizedBox(
                height: _height / 48,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 160),
                child: SvgPicture.asset(
                  'assets/icons/refer.svg',
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 5 * (_height / 8),
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: _height / 24,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  'How to refer and earn ?',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
                ),
              ),
              SizedBox(
                height: _height / 24,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  'Invite your friends to RENTZ using your refferal code',
                  style: TextStyle(fontSize: 12),
                ),
              ),
              SizedBox(
                height: _height / 24,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  'After their first booking you will get 50%',
                  style: TextStyle(fontSize: 12),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  'discount on next booking',
                  style: TextStyle(fontSize: 12),
                ),
              ),
              SizedBox(
                height: _height / 12,
              ),
              Center(
                child: Container(
                  child: Center(
                      child: Text(
                    '0',
                    style: TextStyle(fontSize: 50),
                  )),
                  width: 200,
                  height: 100,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Text(
                    'Total Invites',
                    style: TextStyle(fontSize: 21),
                  ),
                ),
              ),
              SizedBox(
                height: _height / 12,
              ),
              Center(
                child: Container(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 140),
                        child: Text(
                          'WWS&DQ',
                          style: TextStyle(
                              fontSize: 21, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 90),
                        child: IconButton(
                          icon: FaIcon(FontAwesomeIcons.copy),
                          color: kprimarytheme,
                          onPressed: () => {},
                        ),
                      ),
                    ],
                  ),
                  width: 380,
                  height: 50,
                  decoration: BoxDecoration(
                      color: kbackground,
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
