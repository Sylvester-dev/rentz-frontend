import 'package:flutter/material.dart';
import 'package:location/location.dart';
import 'package:rentz/screens/search.dart';
import 'package:rentz/widgets/product_tile.dart';
import 'package:rentz/utils/map_controller.dart';
import '../widgets/location_input.dart';
import 'package:latlong/latlong.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import '../demo_data/flats.dart';

class MapScreen extends StatefulWidget {
  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  @override
  void dispose() {
    super.dispose();
  }

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
      // setState(() {
      //   // print(placemarks);
      //   // print(longitude);
      // });
      lat = loc.latitude;
      long = loc.longitude;
      isSelect = select;
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
      if (item.itemLeadingEdge < .35 && item.itemLeadingEdge > 0) {
        visibleIndex = item.index;
      }
    }
    MyMapController.mapController.onReady.then((result) {
      MyMapController.mapController.move(
          LatLng(DUMMY_FLATS[visibleIndex].lat, DUMMY_FLATS[visibleIndex].long),
          18.0);
    });
  }

  void gotoDetailsPage(ctx, flat) {
    Navigator.of(ctx).pushNamed('/products/flat', arguments: flat);
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
        elevation: 1,
        backgroundColor: Color(0xffEEEEEE),
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
        title: SearchAppBar(),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 20),
            child: GestureDetector(
              child: Icon(
                Icons.gps_fixed,
                color: Colors.grey.shade800,
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
        child: Stack(
          children: [
            SingleChildScrollView(
              physics: NeverScrollableScrollPhysics(),
              child: LocationInput(DUMMY_FLATS, itemScrollController),
            ),
            Positioned(
              bottom: 10,
              width: MediaQuery.of(context).size.width,
              height: 170,
              child: ScrollablePositionedList.builder(
                scrollDirection: Axis.horizontal,
                itemCount: DUMMY_FLATS.length,
                itemScrollController: itemScrollController,
                itemPositionsListener: itemPositionsListener,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      gotoDetailsPage(context, DUMMY_FLATS[index]);
                    },
                    child: ProductTile(DUMMY_FLATS[index]),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
