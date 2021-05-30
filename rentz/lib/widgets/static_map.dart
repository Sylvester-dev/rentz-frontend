import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart';
import '../utils/map_controller.dart';

class StaticMap extends StatefulWidget {
  double latitude;
  double longitude;
  bool isSelect;
  StaticMap(this.latitude, this.longitude, this.isSelect);
  @override
  _StaticMapState createState() => _StaticMapState();
}

class _StaticMapState extends State<StaticMap> {
  void getLocation(LatLng location) {
    setState(() {
      widget.latitude = location.latitude;
      widget.longitude = location.longitude;
    });
    MyMapController.mapController.onReady.then((result) {
      MyMapController.mapController.move(location, 18.0);
    });
  }

  void showThisProduct(ctx) {
    print(ctx);
  }

  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      mapController: MyMapController.mapController,
      options: MapOptions(
        onTap: widget.isSelect == true
            ? (location) {
                getLocation(location);
              }
            : (_) {},
        center: LatLng(widget.latitude, widget.longitude),
        zoom: 16.0,
      ),
      layers: [
        TileLayerOptions(
            urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
            subdomains: ['a', 'b', 'c']),
        MarkerLayerOptions(
          markers: [
            Marker(
              width: 120.0,
              height: 120.0,
              point: LatLng(widget.latitude, widget.longitude),
              builder: (ctx) => Container(
                child: GestureDetector(
                  child: Icon(Icons.location_on),
                  onTap: () {
                    showThisProduct();
                  },
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
