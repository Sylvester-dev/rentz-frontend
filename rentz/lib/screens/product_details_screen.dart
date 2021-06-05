import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:rentz/demo_data/flat.dart';
import '../widgets/corousal.dart';
import '../widgets/product_detail.dart';

class ProductDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final routeArgs = ModalRoute.of(context).settings.arguments as Flat;
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Color(0xffEEEEEE),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leadingWidth: 30,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.arrow_back_sharp),
              color: Color(0xff50C2C9),
              onPressed: () => Navigator.of(context).pop(),
            );
          },
        ),
    
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
                height: MediaQuery.of(context).size.height - 291,
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
                child: ProductDetail(routeArgs),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
