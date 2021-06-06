import 'package:flutter/material.dart';

class NewAd extends StatelessWidget {
  List<int> items = [0, 1, 2, 3, 4];
  List<String> routeNames = [
    "/car",
    "/bike",
    "/flat",
    "/marridge",
    "/construction"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10),
      height: MediaQuery.of(context).size.height - 32,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 10),
            child: Text(
              "CHOOSE A CATEGORY",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
          ),
          Column(
            children: [
              GestureDetector(
                onTap: () {
                  print("henlo");
                },
                child: IntrinsicHeight(
                  child: Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width / 2 - 8,
                        height: 100,
                        child: Center(
                          child: Text(
                            "Flat",
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 18),
                          ),
                        ),
                      ),
                      VerticalDivider(),
                      Container(
                        width: MediaQuery.of(context).size.width / 2 - 8,
                        height: 100,
                        child: Center(
                          child: Text(
                            "Marridge",
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 18),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Divider(),
              IntrinsicHeight(
                child: Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width / 2 - 8,
                      height: 100,
                      child: Center(
                        child: Text(
                          "Construction",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 18),
                        ),
                      ),
                    ),
                    VerticalDivider(),
                    Container(
                      width: MediaQuery.of(context).size.width / 2 - 8,
                      height: 100,
                      child: Center(
                        child: Text(
                          "Hostel",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 18),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(),
              IntrinsicHeight(
                child: Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width / 2 - 8,
                      height: 100,
                      child: Center(
                        child: Text(
                          "Car",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 18),
                        ),
                      ),
                    ),
                    VerticalDivider(),
                    Container(
                      width: MediaQuery.of(context).size.width / 2 - 8,
                      height: 100,
                      child: Center(
                        child: Text(
                          "Bike",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 18),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(),
              IntrinsicHeight(
                child: Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width / 2 - 8,
                      height: 100,
                      child: Center(
                        child: Text(
                          "Bicycle",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 18),
                        ),
                      ),
                    ),
                    VerticalDivider(),
                    Container(
                      width: MediaQuery.of(context).size.width / 2 - 8,
                      height: 100,
                      child: Center(
                        child: Text(
                          "Others",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 18),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
