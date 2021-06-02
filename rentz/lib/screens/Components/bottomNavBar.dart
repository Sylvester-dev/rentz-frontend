import 'package:flutter/material.dart';
import '../../constant.dart';
class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key key,
    @required TabController tabController,
  }) : _tabController = tabController, super(key: key);

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kbackground,
      padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 20.0),
      child: Material(
        elevation: 10,
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.black,
        child: Container(
          height: 70.0,
          width: double.infinity,
          // color: Colors.black26,
          child: TabBar(
            labelColor: Colors.white,
            unselectedLabelColor: Colors.grey,
            tabs: <Widget>[
              Tab(
                icon: Icon(
                  Icons.grass,
                  size: 24.0,
                ),
                // text: 'Home',
              ),
              Tab(
                icon: Icon(
                  Icons.build,
                  size: 24.0,
                ),
                // text: 'Department',
              ),
              Tab(
                icon: Icon(
                  Icons.hail,
                  size: 24.0,
                ),
                // text: 'Cart',
              ),
              Tab(
                icon: Icon(
                  Icons.admin_panel_settings,
                  size: 24.0,
                ),
                // text: 'Cart',
              ),
            ],
            controller: _tabController,
          ),
        ),
      ),
    );
  }
}
