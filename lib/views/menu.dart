import 'package:flutter/material.dart';
// import 'package:third_application/views/card.dart';
import 'package:third_application/views/firebase_data.dart';
import 'package:third_application/views/list_view1.dart';
import 'package:third_application/views/profile.dart';
import 'package:third_application/views/profile1.dart';


class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => MenuS();
}

class MenuS extends State<Menu> {

  int _selectedIndex = 0;

  static const TextStyle optionStyle = 
    TextStyle(fontSize:24, fontWeight: FontWeight.bold);

  static final List<Widget> _widgetOptions= <Widget>[

    const Text('Home', style: optionStyle),
    const GetFireBase(),
    const Profile1(),
    
  ];

  void _onItemTapped(int index){
    setState((){
      _selectedIndex =index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(

        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.car_repair),
            label: 'Service'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile'
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,

      ),
      /* body: Container(
        alignment: Alignment.center,
        child: const Text("Home"),
        ), */
      );
  }
}