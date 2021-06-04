import 'package:flutter/material.dart';
import '../../constant.dart';
import '../../demo_data/services.dart';

class ReusableCard extends StatelessWidget {
  const ReusableCard({Key key, this.service}) : super(key: key); 
  // ReusableCard({@required this.colour,this.onPress,this.icon, this.label});

  // final IconData icon;
  // final String label;
  // final Color colour;
  // final Function onPress;
  final Service service;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:service.onPress,
      child: Container(
        height: 94,
        width: 94,
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        IconButton(
          icon: Icon(service.icon, size: 30),
          color: kgreen,
          onPressed: () {
            //action on pressed
          },
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          service.label,
          textAlign: TextAlign.center,
          style: TextStyle(color: kgreen,fontSize: 14),
        ),
      ],
    ),
        margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
        decoration: BoxDecoration(
          color: service.colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
// import 'package:flutter/material.dart';

// class ReusableCard extends StatelessWidget {
//   ReusableCard({@required this.colour, this.cardChild,this.onPress});
//   final Color colour;
//   final Widget cardChild;
//   final Function onPress;
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap:onPress,
//       child: Container(
//         height: 94,
//         width: 94,
//         child: cardChild,
//         margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
//         decoration: BoxDecoration(
//           color: colour,
//           borderRadius: BorderRadius.circular(10.0),
//         ),
//       ),
//     );
//   }
// }
