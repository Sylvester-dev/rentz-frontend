import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rentz/screens/product_details_screen.dart';

class ProductHeader extends StatefulWidget {
  bool favorite = false;
  final id;
  final name;
  final address;
  ProductHeader(this.id, this.name, this.address);
  @override
  _ProductHeaderState createState() => _ProductHeaderState();
}

class _ProductHeaderState extends State<ProductHeader> {
  void addToFavorite(String id) {
    // add this id to favorites
    setState(() {
      widget.favorite = !widget.favorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          child: Text(
            widget.name,
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.w800),
            textAlign: TextAlign.left,
          ),
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 8),
                  child: Text(
                    widget.address,
                    style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 8),
                  child: Text(
                    "4.5/453",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(right: 15),
              child: GestureDetector(
                child: widget.favorite
                    ? Icon(
                        Icons.favorite,
                        size: 40,
                        color: Theme.of(context).primaryColor,
                      )
                    : FaIcon(
                        FontAwesomeIcons.gratipay,
                        size: 40,
                        semanticLabel: "filled",
                        color: Theme.of(context).primaryColor,
                      ),
                onTap: () {
                  addToFavorite(widget.id);
                },
              ),
            )
          ],
        ),
      ],
    );
  }
}
