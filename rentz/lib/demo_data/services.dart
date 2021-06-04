import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Service {  
  const Service({this.label, this.icon,this.colour,this.onPress});  
  final String label;  
  final IconData icon; 
  final Color colour;
  final Function onPress;
}  
  
const List<Service> service = const <Service>[  
  const Service(label: 'Home', icon: Icons.home,colour: Colors.white,),  
  const Service(label: 'Car', icon: Icons.car_rental,colour: Colors.white,),  
  const Service(label: 'Bike', icon: Icons.pedal_bike_sharp,colour: Colors.white,),  
  const Service(label: 'Tent', icon: Icons.ten_k_outlined,colour: Colors.white,),  
  const Service(label: 'Generator', icon: Icons.battery_alert,colour: Colors.white,),  
  const Service(label: 'Electrician', icon: Icons.auto_graph_sharp,colour: Colors.white,),  
  const Service(label: 'Plumber', icon: Icons.auto_graph_sharp,colour: Colors.white,),  
  const Service(label: 'Carpenter', icon: Icons.auto_graph_sharp,colour: Colors.white,),  
  const Service(label: 'Cleaner', icon: Icons.cleaning_services_rounded,colour: Colors.white,),  
];  

