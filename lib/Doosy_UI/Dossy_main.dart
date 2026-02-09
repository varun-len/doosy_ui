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
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(

                decoration: BoxDecoration(color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Text(
                        "John Doe",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w900,
                          letterSpacing: 0.5,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Text(
                        "john2563d@gmail.com ",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0.5,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              ListTile(
                leading: Icon(Icons.home,color: Color(0xff00D9AE),),
                title: Text('Home'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.history,color: Color(0xff00D9AE),),
                title: Text('Order history'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.wallet_travel,color: Color(0xff00D9AE),),
                title: Text('E- Wallet'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.shopping_bag,color: Color(0xff00D9AE),),
                title: Text('My Orders'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.help_outline,color: Color(0xff00D9AE),),
                title: Text('Terms & Conditions'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.notifications_none_rounded,color: Color(0xff00D9AE),),
                title: Text('Notifications'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.airplane_ticket_outlined,color: Color(0xff00D9AE),),
                title: Text('Tickets'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.info_outline,color: Color(0xff00D9AE),),
                title: Text('About'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.star_border,color: Color(0xff00D9AE),),
                title: Text('Rate App'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.share,color: Color(0xff00D9AE),),
                title: Text('Share'),
                onTap: () {},
              ),
            ],
          ),
        ),
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
