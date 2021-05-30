import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart' as Geocoding;
import 'package:location/location.dart';
import './static_map.dart';

class LocationInput extends StatelessWidget {
  final double latitude, longitude;
  final bool isSelect;
  LocationInput(this.latitude, this.longitude, this.isSelect);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                border: Border.all(
              width: 1,
              color: Colors.grey,
            )),
            child: StaticMap(latitude, longitude, isSelect)
            // Image.network(
            //     _previewImageURL,
            //     fit: BoxFit.cover,
            //     width: double.infinity,
            //   ),
            ),
      ],
    );
  }
}
