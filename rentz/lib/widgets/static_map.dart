import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart';
import '../utils/map_controller.dart';
import '../demo_data/flats.dart';

class StaticMap extends StatefulWidget {
  double latitude;
  double longitude;
  bool isSelect;
  StaticMap(this.latitude, this.longitude, this.isSelect);
  @override
  _StaticMapState createState() => _StaticMapState();
}

class _StaticMapState extends State<StaticMap> {
  Marker myLocationMarker(LatLng location) {
    return Marker(
      width: 120.0,
      height: 120.0,
      point: location,
      builder: (ctx) => GestureDetector(
        child: Icon(Icons.home_filled),
        onTap: () {
          print("henlo");
          showThisProduct("Mylocation");
        },
      ),
    );
  }

  void getLocation(LatLng location) {
    setState(() {
      // createMarkers().add(myLocationMarker(location));
      widget.latitude = location.latitude;
      widget.longitude = location.longitude;
    });
    MyMapController.mapController.onReady.then((result) {
      MyMapController.mapController.move(location, 18.0);
    });
  }

  void showThisProduct(id) {
    print(id);
  }

  List<Marker> createMarkers() {
    return DUMMY_FLATS.map((flat) {
      return Marker(
        width: 120.0,
        height: 120.0,
        point: LatLng(flat.lat, flat.long),
        builder: (ctx) => GestureDetector(
          child: Icon(Icons.location_on),
          onTap: () {
            showThisProduct(flat.id);
          },
        ),
      );
    }).toList();
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
        zoom: 18.0,
      ),
      layers: [
        TileLayerOptions(
            urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
            subdomains: ['a', 'b', 'c']),
        MarkerLayerOptions(
          markers: [
            ...createMarkers(),
            myLocationMarker(LatLng(widget.latitude, widget.longitude)),
          ],
        ),
      ],
    );
  }
}
