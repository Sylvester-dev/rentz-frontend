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
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(children: [
        Expanded(
          flex: 3,
          child: Container(
            color: kprimarytheme.withAlpha(240),
            child: Stack(
              children: [
                Positioned(
                    top: 90,
                    left: 50,
                    child: Text(
                      'Refer and Earn',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
                    )),
                Positioned(
                    top: 160,
                    left: 50,
                    child: Text(
                      'refer to your friends to get discount ',
                      style: TextStyle(fontSize: 12),
                    )),
                Positioned(
                    top: 175,
                    left: 50,
                    child: Text(
                      'upto 50% on booking',
                      style: TextStyle(fontSize: 12),
                    )),
                Positioned(
                  bottom: 40,
                  right: 40,
                  child: SvgPicture.asset(
                    'assets/icons/refer.svg',
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 5,
          child: Container(
            color: Colors.white,
            child: Stack(
              children: [
                Positioned(
                    top: 90,
                    left: 50,
                    child: Text(
                      'How to refer and earn ?',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
                    )),
                Positioned(
                    top: 160,
                    left: 50,
                    child: Text(
                      'Invite your friends to RENTZ using your refferal code',
                      style: TextStyle(fontSize: 12),
                    )),
                Positioned(
                    top: 220,
                    left: 50,
                    child: Text(
                      'After their first booking you will get 50%',
                      style: TextStyle(fontSize: 12),
                    )),
                Positioned(
                    top: 235,
                    left: 50,
                    child: Text(
                      'discount on next booking',
                      style: TextStyle(fontSize: 12),
                    )),
                Positioned(
                  top: 290,
                  left: 100,
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
                Positioned(
                    top: 400,
                    left: 140,
                    child: Text(
                      'Total Invites',
                      style: TextStyle(fontSize: 21),
                    )),
                Positioned(
                  top: 460,
                  left: 14,
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
        ),
      ]),
    );
  }
}
