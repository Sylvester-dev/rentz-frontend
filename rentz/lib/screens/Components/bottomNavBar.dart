import 'package:flutter/material.dart';
import '../../constant.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key key,
    @required TabController tabController,
  })  : _tabController = tabController,
        super(key: key);

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 10.0),
      child: Material(
        clipBehavior: Clip.hardEdge,
        elevation: 5,
        borderRadius: BorderRadius.circular(20.0),
        color: Theme.of(context).primaryColor,
        child: Container(
          height: 70.0,
          width: double.infinity,
          // color: Colors.black26,
          child: TabBar(
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white,
            tabs: <Widget>[
              Tab(
                icon: Icon(
                  Icons.home,
                  size: 24.0,
                ),
                // text: 'Home',
              ),
              Tab(
                icon: Icon(
                  Icons.category_outlined,
                  size: 24.0,
                ),
                // text: 'Department',
              ),
              Tab(
                icon: Icon(
                  Icons.card_travel_outlined,
                  size: 24.0,
                ),
                // text: 'Cart',
              ),
              Tab(
                icon: Icon(
                  Icons.account_circle,
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
