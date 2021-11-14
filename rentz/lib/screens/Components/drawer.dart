import 'package:flutter/material.dart';
import 'package:rentz/utils/google_auth.dart';
import '../../utils/shared_preferances.dart';
import 'package:http/http.dart' as http;

SP store = new SP();

class SideDrawer extends StatefulWidget {
  @override
  _SideDrawerState createState() => _SideDrawerState();
}

class _SideDrawerState extends State<SideDrawer> {
  String name = "Narendra Singh";
  Future<void> initialise() async {
    try {
      String key = "accessToken";
      final accessToken = await store.getStringValuesSP(key);
      final response = await http.get(
          Uri.parse("http://192.168.1.4:4000/details/user"),
          headers: {"authorization": "Bearer ${accessToken}"});
      print(response.body);
      setState(() {
        name = "Narendra";
      });
    } catch (error) {
      print(error);
    }
  }

  @override
  void initState() {
    super.initState();
    print("Init State Running.");
    initialise();
  }

  Auth googleAuth = Auth();
  SP store = SP();
  void handleLogOut() async {
    await store.removeValues("accessToken");
    await store.removeValues("refreshToken");
    await googleAuth.googleSignIn.signOut();
    Navigator.of(context).pushNamed("/login");
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListView(
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
              name,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            trailing: Icon(Icons.arrow_right_alt,
                color: Theme.of(context).primaryColor),
          ),
          ListTile(
            leading: Icon(Icons.home_outlined,
                color: Theme.of(context).primaryColor),
            title: Text("Home"),
            onTap: () => Navigator.of(context).popAndPushNamed('/home'),
          ),
          ListTile(
            leading: Icon(Icons.add_business_outlined,
                color: Theme.of(context).primaryColor),
            title: Text("My Ads"),
            onTap: () {
              Navigator.of(context).pushNamed('/add');
            },
          ),
          ListTile(
            leading:
                Icon(Icons.touch_app, color: Theme.of(context).primaryColor),
            title: Text("Bookings"),
            onTap: () => Navigator.of(context).popAndPushNamed('/booking'),
          ),
          ListTile(
            leading: Icon(Icons.stars, color: Theme.of(context).primaryColor),
            title: Text("Favourite"),
            onTap: () => Navigator.of(context).popAndPushNamed('/booking'),
          ),
          ListTile(
            leading: Icon(Icons.card_giftcard,
                color: Theme.of(context).primaryColor),
            title: Text("Refer & Earn"),
            onTap: () => Navigator.of(context).popAndPushNamed('/refer'),
          ),
          ListTile(
            leading:
                Icon(Icons.settings, color: Theme.of(context).primaryColor),
            title: Text("Support"),
            onTap: () => Navigator.of(context).popAndPushNamed('/booking'),
          ),
          ListTile(
            leading:
                Icon(Icons.contacts, color: Theme.of(context).primaryColor),
            title: Text("Contact us"),
            onTap: () => Navigator.of(context).popAndPushNamed('/booking'),
          ),
          ListTile(
            leading: Icon(Icons.power_settings_new,
                color: Theme.of(context).primaryColor),
            title: Text("LogOut"),
            onTap: handleLogOut,
          ),
          ListTile(
            leading: Icon(Icons.info, color: Theme.of(context).primaryColor),
            title: Text("About"),
            trailing: Text(
              "1.0.0",
              style: TextStyle(color: Theme.of(context).primaryColor),
            ),
            onTap: () => Navigator.of(context).popAndPushNamed('/booking'),
          ),
        ],
      ),
    );
  }
}
