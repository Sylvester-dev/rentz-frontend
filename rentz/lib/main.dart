import 'package:flutter/material.dart';
import 'package:rentz/screens/Components/appbar.dart';
import 'package:rentz/screens/Components/drawer.dart';
import 'package:rentz/screens/add_form.dart';
import 'package:rentz/screens/add_screen.dart';
import 'package:rentz/screens/booking_screen.dart';
import 'package:rentz/screens/image_picker.dart';
import 'package:rentz/screens/login_screen.dart';
import 'package:rentz/screens/profile_screen.dart';
import 'package:rentz/screens/refer_earn.dart';
import 'package:rentz/screens/home_screen.dart';
import 'package:rentz/screens/serviceScreen.dart';
import 'screens/Components/bottomNavBar.dart';
import 'screens/search_screen.dart';
import 'package:rentz/screens/map_screen.dart';
import 'package:rentz/screens/notification.dart';
import 'package:rentz/screens/refer_earn.dart';
import 'package:rentz/screens/splash.dart';
import 'package:rentz/widgets/product_detail.dart';
import './screens/product_details_screen.dart';
import 'package:flutter/services.dart';

import 'screens/signup_screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.amber, // navigation bar color
    statusBarColor: Color(0xff50C2C9), // status bar color
    statusBarIconBrightness: Brightness.light, // status bar icon color
    systemNavigationBarIconBrightness:
        Brightness.dark, // color of navigation controls
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: MyHomePage(),
      theme: ThemeData(
        primaryColor: Color(0xff50C2C9),
        accentColor: Color(0xffEEEEEE),
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (ctx) => MyHomePage(),
        '/add': (ctx) => MyAdd(),
        '/home': (ctx) => MyHomePage(),
        // '/profile': (ctx) => Profile(),
        '/login': (ctx) => LoginScreen(),
        '/signup': (ctx) => SignupScreen(),
        '/search': (ctx) => Search(),
        // '/favorite': (ctx) => Favo(),
        '/refer': (ctx) => ReferEarn(),
        '/noti': (ctx) => Noti(),
        '/booking': (ctx) => Booking(),
        // '/products': (ctx) => ProductDetailsScreen(),
        '/products/flat': (ctx) => ProductDetailsScreen(),
        '/products/mapview': (ctx) => MapScreen(),
        '/addform':(ctx) => AddForm(),
        // '/product/:id': (ctx) => Home(),
        // '/add': (ctx) => Home(),
        // '/add/:id': (ctx) => Home(),
        // '/yourservices': (ctx) => Home(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  String title = 'BottomNavigationBar';

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: appbar(context),
      body: TabBarView(
        children: <Widget>[
          Home(),
          Service(),
          Booking(),
          ProfileScreen(),
        ],
        // If you want to disable swiping in tab the use below code
        physics: NeverScrollableScrollPhysics(),
        controller: _tabController,
      ),
      drawer: SafeArea(
        child: Drawer(
          child: SideDrawer(),
        ),
      ),
      bottomNavigationBar: BottomNavBar(tabController: _tabController),
    );
  }
}
