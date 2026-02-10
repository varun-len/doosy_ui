import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:untitled2/Doosy_UI/location.dart';
import 'package:untitled2/Doosy_UI/myOrders.dart';
import 'package:untitled2/Doosy_UI/profile_screen.dart';
import 'package:untitled2/Doosy_UI/services.dart';

import 'dashboard.dart';

class DossyMain extends StatefulWidget {
  const DossyMain({super.key});

  @override
  State<DossyMain> createState() => _DossyMainState();
}

class _DossyMainState extends State<DossyMain> {
final GlobalKey _scaffoldKey=GlobalKey();
  late List<Widget> screens=[
    HomePage(),
    ServicesScreen(),
    LocationScreen(),
    OrderScreen(),
    ProfileScreen(),
  ];
  int _selectedIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key:_scaffoldKey,

      body:screens[_selectedIndex],
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(color: Colors.black45, blurRadius: 3),
              BoxShadow(color: Colors.black12, blurRadius: 2),
              BoxShadow(color: Colors.black12, blurRadius: 1),
            ],
          ),
          child: BottomNavigationBar(
            backgroundColor: Colors.white,
            selectedItemColor: Color(0xff00D9AE),
            unselectedItemColor: Colors.black,
            currentIndex: _selectedIndex,
            onTap: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },

            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
              BottomNavigationBarItem(
                icon: Icon(Icons.dashboard_outlined),
                label: "",
              ),
              BottomNavigationBarItem(icon: Icon(Icons.location_on_outlined), label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
            ],
          ),
    ));
  }
}
