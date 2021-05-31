import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import '../widgets/corousal.dart';
import '../widgets/product_detail.dart';

class ProductDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Color(0xffEEEEEE),
      appBar: AppBar(
        brightness: Brightness.dark,
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.sort),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 20),
            child: GestureDetector(
              child: Icon(
                Icons.near_me,
                color: Colors.white,
                size: 30,
              ),
              onTap: () {},
            ),
          )
        ],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              top: 0,
              child: Container(
                height: 350,
                width: MediaQuery.of(context).size.width,
                margin:
                    EdgeInsets.only(top: MediaQuery.of(context).padding.top),
                child: Corousal(
                  [
                    "https://picsum.photos/200/300?random=1",
                    "https://picsum.photos/200/300?random=2",
                    "https://picsum.photos/200/300?random=3",
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                // color: Colors.white,
                height: 390,
                child: ProductDetail(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
