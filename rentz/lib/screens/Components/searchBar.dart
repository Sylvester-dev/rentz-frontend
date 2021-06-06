import 'package:flutter/material.dart';
import '../../utils/temp_search.dart';
import 'package:http/http.dart' as http;

class SearchBar extends StatefulWidget {
  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  TempSearch predict = TempSearch();
  void handleSearch(value) async {
    print(value);
    List<String> product = predict.search(value);
    print(product);
    if (product.length == 0) {
      Navigator.of(context).pushNamed('/search');
    } else {
      final response = await http.post(
        Uri.parse("http://192.168.1.4:4000/test"),
        headers: {"service": product.toString()},
      );
      print(response);
      Navigator.of(context).pushNamed('/search');
    }
    //save these responses globally
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(10.0),
      child: TextField(
        textInputAction: TextInputAction.search,
        onSubmitted: (value) => handleSearch(value),
        autocorrect: true,
        decoration: InputDecoration(
          hintText: 'Search',
          prefixIcon: Icon(
            Icons.search,
            color: Theme.of(context).primaryColor,
          ),
          hintStyle: TextStyle(color: Colors.grey),
          filled: true,
          fillColor: Colors.white,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(12.0)),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            borderSide:
                BorderSide(color: Theme.of(context).primaryColor, width: 2),
          ),
        ),
      ),
    );
  }
}
