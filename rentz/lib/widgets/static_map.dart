import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart';
import 'package:location/location.dart';
import '../utils/map_controller.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class StaticMap extends StatefulWidget {
  final List<dynamic> flats;
  final itemScrollController;
  StaticMap(this.flats, this.itemScrollController);
  @override
  _StaticMapState createState() => _StaticMapState();
}

class _StaticMapState extends State<StaticMap> {
  Location location;
  LatLng currentLocation;
  var mapOptions = MapOptions(
    center: LatLng(23, 80),
    zoom: 18.0,
  );
  Marker homeMarker;
  @override
  void initState() {
    super.initState();
    _getCurrentLocation().then((value) {
      location = new Location();
      location.onLocationChanged.listen((LocationData cLoc) {
        setState(() {
          currentLocation = LatLng(cLoc.latitude, cLoc.longitude);
          //   print("updated");
        });
      });
    });
  }

  Future<void> _getCurrentLocation() async {
    try {
      final loc = await Location().getLocation();
      currentLocation = LatLng(loc.latitude, loc.longitude);
      MyMapController.mapController.onReady.then((result) {
        MyMapController.mapController.move(currentLocation, 18.0);
      });
    } catch (e) {
      print(e);
      return;
    }
  }

  void showThisProduct(id) {
    widget.itemScrollController.scrollTo(
        index: id,
        duration: Duration(seconds: 1),
        curve: Curves.easeInOutCubic);
  }

  List<Marker> createMarkers() {
    return widget.flats.map((flat) {
      return Marker(
        width: 80.0,
        height: 80.0,
        point: LatLng(flat.lat, flat.long),
        builder: (ctx) => GestureDetector(
          child: Icon(
            Icons.location_on,
            size: 40,
            color: Colors.blue.shade800,
          ),
          onTap: () {
            showThisProduct(widget.flats.indexOf(flat));
          },
        ),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    if (currentLocation != null) {
      mapOptions = MapOptions(
        center: currentLocation,
        zoom: 18.0,
      );
    }

    return FlutterMap(
      mapController: MyMapController.mapController,
      options: mapOptions,
      layers: [
        TileLayerOptions(
            urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
            subdomains: ['a', 'b', 'c']),
        MarkerLayerOptions(
          markers: [
            ...createMarkers(),
            Marker(
              width: 80.0,
              height: 80.0,
              point: currentLocation,
              builder: (ctx) => GestureDetector(
                child: FaIcon(
                  FontAwesomeIcons.solidDotCircle,
                  size: 30,
                  semanticLabel: "fas",
                  color: Colors.blue.shade800,
                ),
                onTap: () {},
              ),
            ),
            // homeMarker,
          ],
        ),
      ],
    );
  }
}
