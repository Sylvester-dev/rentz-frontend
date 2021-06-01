import 'package:flutter/material.dart';
import 'package:location/location.dart';
import 'package:rentz/widgets/product_tile.dart';
import 'package:rentz/widgets/search_bar.dart';
import 'package:rentz/utils/map_controller.dart';
import '../widgets/location_input.dart';
import 'package:latlong/latlong.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class MapScreen extends StatefulWidget {
  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  double lat = 23.4916248, long = 80.34373889999999;
  bool isSelect = false;

  final ItemScrollController itemScrollController = ItemScrollController();
  final ItemPositionsListener itemPositionsListener =
      ItemPositionsListener.create();

  Future<void> _getCurrentLocation(select) async {
    try {
      final loc = await Location().getLocation();
      // List<Geocoding.Placemark> placemarks =
      //     await Geocoding.placemarkFromCoordinates(
      //         locData.latitude, locData.longitude);
      setState(() {
        lat = loc.latitude;
        long = loc.longitude;

        isSelect = select;
        // print(placemarks);
        // print(longitude);
      });
      MyMapController.mapController.onReady.then((result) {
        MyMapController.mapController
            .move(LatLng(loc.latitude, loc.longitude), 18.0);
      });
    } catch (e) {
      print(e);
      print("locData");
      return;
    }
  }
  var visibleIndex = 0;

  void doSomethingWith(List<ItemPosition> val) {
    
    for (var item in val) {
      if (item.itemLeadingEdge < .35 && item.itemLeadingEdge > 0)
      {
        visibleIndex = item.index;
      } 
    }

    print(visibleIndex);
  }

  @override
  Widget build(BuildContext context) {
    itemPositionsListener.itemPositions.addListener(() {
      doSomethingWith(itemPositionsListener.itemPositions.value.toList());
    });
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Color(0xffEEEEEE),
      appBar: AppBar(
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
                Icons.gps_fixed,
                color: Colors.black87,
                size: 30,
              ),
              onTap: () {
                _getCurrentLocation(false);
              },
            ),
          )
        ],
      ),
      body: Container(
        // height: MediaQuery.of(context).size.height,
        // width: double.infinity,
        child: Stack(
          children: [
            SingleChildScrollView(
              physics: NeverScrollableScrollPhysics(),
              child: LocationInput(lat, long, isSelect),
            ),
            Container(
              margin: EdgeInsets.only(top: AppBar().preferredSize.height + 15),
              child: SearchBar(),
            ),
            Positioned(
              bottom: 10,
              width: MediaQuery.of(context).size.width,
              height: 170,
              child: ScrollablePositionedList.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemScrollController: itemScrollController,
                itemPositionsListener: itemPositionsListener,
                itemBuilder: (BuildContext context, int index) {
                  return ProductTile();
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
