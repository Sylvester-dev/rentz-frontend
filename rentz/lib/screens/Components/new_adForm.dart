import 'package:flutter/material.dart';
import 'package:rentz/screens/image_picker.dart';
import '../../constant.dart';

class AdForm extends StatefulWidget {
  @override
  _AdFormState createState() => _AdFormState();
}

class _AdFormState extends State<AdForm> {
  String _chosenType;
  String _chosenBedrooms;
  String _chosenBathrooms;
  String _chosenFurnishing;
  String _chosenListedBy;
  String _chosenFree;
  String _chosenBachelor;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(10.0),
        margin: EdgeInsets.all(10.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              DropdownButton<String>(
                value: _chosenType,
                items: <String>[
                  'Apartments',
                  'Builder Floors',
                  'Houses & Villas',
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    child: Text(value),
                    value: value,
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    _chosenType = value;
                  });
                },
                hint: Text("Type"),
                elevation: 8,
                style: TextStyle(color: kgreen),
                icon: Icon(Icons.arrow_drop_down_circle),
                iconEnabledColor: kgreen,
                isExpanded: true,
              ),
              DropdownButton<String>(
                value: _chosenBedrooms,
                items: <String>[
                  '1',
                  '2',
                  '3',
                  '4',
                  '4+',
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    child: Text(value),
                    value: value,
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    _chosenBedrooms = value;
                  });
                },
                hint: Text("Bedrooms"),
                elevation: 8,
                style: TextStyle(color: kgreen),
                icon: Icon(Icons.arrow_drop_down_circle),
                iconEnabledColor: kgreen,
                isExpanded: true,
              ),
              DropdownButton<String>(
                value: _chosenBathrooms,
                items: <String>[
                  '1',
                  '2',
                  '3',
                  '4',
                  '4+',
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    child: Text(value),
                    value: value,
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    _chosenBathrooms = value;
                  });
                },
                hint: Text("Bathrooms"),
                elevation: 8,
                style: TextStyle(color: kgreen),
                icon: Icon(Icons.arrow_drop_down_circle),
                iconEnabledColor: kgreen,
                isExpanded: true,
              ),
              DropdownButton<String>(
                value: _chosenFurnishing,
                items: <String>[
                  'Furnished',
                  'Semi-Furnished',
                  'Unfurnished',
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    child: Text(value),
                    value: value,
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    _chosenFurnishing = value;
                  });
                },
                hint: Text("Furnishing"),
                elevation: 8,
                style: TextStyle(color: kgreen),
                icon: Icon(Icons.arrow_drop_down_circle),
                iconEnabledColor: kgreen,
                isExpanded: true,
              ),
              DropdownButton<String>(
                value: _chosenListedBy,
                items: <String>[
                  'Builder',
                  'Dealer',
                  'Owner',
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    child: Text(value),
                    value: value,
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    _chosenListedBy = value;
                  });
                },
                hint: Text("Listed by"),
                elevation: 8,
                style: TextStyle(color: kgreen),
                icon: Icon(Icons.arrow_drop_down_circle),
                iconEnabledColor: kgreen,
                isExpanded: true,
              ),
              DropdownButton<String>(
                value: _chosenFree,
                items: <String>[
                  'BreakFast',
                  'Lunch',
                  'Dinner',
                  'All',
                  'None',
                  'Free (for limited days)',
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    child: Text(value),
                    value: value,
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    _chosenFree = value;
                  });
                },
                hint: Text("Complimentary Food"),
                elevation: 8,
                style: TextStyle(color: kgreen),
                icon: Icon(Icons.arrow_drop_down_circle),
                iconEnabledColor: kgreen,
                isExpanded: true,
              ),
              DropdownButton<String>(
                value: _chosenBachelor,
                items: <String>[
                  'Yes',
                  'No',
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    child: Text(value),
                    value: value,
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    _chosenBachelor = value;
                  });
                },
                hint: Text("Bachelors Allowed"),
                elevation: 8,
                style: TextStyle(color: kgreen),
                icon: Icon(Icons.arrow_drop_down_circle),
                iconEnabledColor: kgreen,
                isExpanded: true,
              ),
              TextField(
                style: TextStyle(fontSize: 15.0),
                decoration: const InputDecoration(
                  labelText: 'Builtup Area (ftsq)',
                  labelStyle: TextStyle(
                    color: kgreen,
                  ),
                ),
              ),
              TextField(
                style: TextStyle(fontSize: 15.0),
                decoration: const InputDecoration(
                  labelText: 'Maintenance (Monthly)',
                  labelStyle: TextStyle(
                    color: kgreen,
                  ),
                ),
              ),
              TextField(
                style: TextStyle(fontSize: 15.0),
                decoration: const InputDecoration(
                  labelText: 'Rent (per day)',
                  labelStyle: TextStyle(
                    color: kgreen,
                  ),
                ),
              ),
              TextField(
                style: TextStyle(fontSize: 15.0),
                decoration: const InputDecoration(
                  labelText: 'Project Name',
                  labelStyle: TextStyle(
                    color: kgreen,
                  ),
                ),
              ),
              TextField(
                style: TextStyle(fontSize: 15.0),
                decoration: const InputDecoration(
                  labelText: 'Address',
                  labelStyle: TextStyle(
                    color: kgreen,
                  ),
                ),
              ),
              Center(
                child: Container(
                  margin: EdgeInsets.all(10.0),
                  child: ElevatedButton.icon(
                    icon: Icon(
                      Icons.location_on,
                      color: Colors.white,
                      size: 16.0,
                    ),
                    label: Text('Current Location'),
                    onPressed: () {
                      print('Pressed');
                    },
                    style: ElevatedButton.styleFrom(
                      primary: kgreen,
                      padding: EdgeInsets.all(15.0),
                      shadowColor: kgreen,
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(5.0),
                      ),
                    ),
                  ),
                ),
              ),
              TextFormField(
                style: TextStyle(fontSize: 15.0),
                maxLength: 2000,
                decoration: const InputDecoration(
                  labelText: 'Describe what you are selling',
                  labelStyle: TextStyle(
                    color: kgreen,
                  ),
                ),
                validator: (value) {
                  if (value.isEmpty) {
                    return "It can't be empty";
                  }
                  return null;
                },
              ),
              Center(
                child: Container(
                  padding: const EdgeInsets.only(top: 10.0, bottom: 20.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      onPrimary: Colors.white,
                      primary: kgreen,
                    ),
                    child: Text(
                      'Submit',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {
                      // It returns true if the form is valid, otherwise returns false
                      if (_formKey.currentState.validate()) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ImagePick()),
                        );
                        ;
                      } else {
                        print('Form Not Validated');
                      }
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
