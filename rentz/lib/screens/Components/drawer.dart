import 'package:flutter/material.dart';
import 'package:rentz/utils/google_auth.dart';

class SideDrawer extends StatefulWidget {
  @override
  _SideDrawerState createState() => _SideDrawerState();
}

class _SideDrawerState extends State<SideDrawer> {
  Auth googleAuth = Auth();
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
          ListTile(
            contentPadding: EdgeInsets.fromLTRB(20.0, 20.0, 10.0, 30.0),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://cdn4.iconfinder.com/data/icons/avatar-circle-1-1/72/91-512.png"), //NetworkImage
              radius: 30,
            ),
            title: Text(
              "My Profile",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            trailing: Icon(Icons.arrow_right_alt,
                color: Theme.of(context).primaryColor),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.home, color: Theme.of(context).primaryColor),
            title: Text("Home"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.payment, color: Theme.of(context).primaryColor),
            title: Text("Payments"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading:
                Icon(Icons.touch_app, color: Theme.of(context).primaryColor),
            title: Text("Bookings"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.stars, color: Theme.of(context).primaryColor),
            title: Text("Favourite"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.today, color: Theme.of(context).primaryColor),
            title: Text("Calender"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.card_giftcard,
                color: Theme.of(context).primaryColor),
            title: Text("Refer & Earn"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading:
                Icon(Icons.settings, color: Theme.of(context).primaryColor),
            title: Text("Support"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading:
                Icon(Icons.contacts, color: Theme.of(context).primaryColor),
            title: Text("Contact us"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.power_settings_new,
                color: Theme.of(context).primaryColor),
            title: Text("LogOut"),
            onTap: () async {
              await googleAuth.googleSignIn.signOut();
              Navigator.of(context).pushNamed("/login");
              // Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.info, color: Theme.of(context).primaryColor),
            title: Text("About"),
            trailing: Text(
              "1.0.0",
              style: TextStyle(color: Theme.of(context).primaryColor),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
