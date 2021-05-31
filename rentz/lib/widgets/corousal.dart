import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class Corousal extends StatefulWidget {
  final List<String> imgList;
  Corousal(this.imgList);

  @override
  _CorousalState createState() => _CorousalState();
}

class _CorousalState extends State<Corousal> {
  int _current = 0;
  void updateIndicator(index) {
    setState(() {
      _current = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider(
          options: CarouselOptions(
              height: 350.0,
              viewportFraction: 1,
              onPageChanged: (index, _) {
                updateIndicator(index);
              }),
          items: widget.imgList
              .map(
                (imgurl) => Container(
                  child: Image.network(
                    imgurl,
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: 350,
                  ),
                ),
              )
              .toList(),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: widget.imgList.map((url) {
              int index = widget.imgList.indexOf(url);
              return Container(
                width: 8.0,
                height: 8.0,
                margin: EdgeInsets.symmetric(vertical: 35.0, horizontal: 5.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _current == index
                      ? Color.fromRGBO(255, 255, 255, 0.9)
                      : Color.fromRGBO(255, 255, 255, 0.4),
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
