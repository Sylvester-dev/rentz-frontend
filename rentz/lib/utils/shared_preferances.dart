import 'package:shared_preferences/shared_preferences.dart';

class SF {
  addStringToSF(key, val) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(key, val);
  }

  getStringValuesSF(key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String value = prefs.getString(key);
    return value;
  }

  removeValues(key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove(key);
  }

  constainsValue(key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool CheckValue = prefs.containsKey(key);
    return CheckValue;
  }
}
