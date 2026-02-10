import 'package:flutter/material.dart';
import 'package:untitled2/Doosy_UI/Dashboard_utils/text_style_max.dart';

import '../cart_screen.dart';
import '../location.dart';

class CustomizedAppbar extends StatefulWidget {
  const CustomizedAppbar({super.key});

  @override
  State<CustomizedAppbar> createState() => _CustomizedAppbarState();
}

class _CustomizedAppbarState extends State<CustomizedAppbar> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: Stack(
        children: [
          Container(
            height: 130,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              color: Color(0xff00D9AE),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Builder(
                  builder: (context) {
                    return IconButton(
                      onPressed: () {
                        // _scaffoldKey.currentState?.openDrawer();
                        Scaffold.of(context).openDrawer();
                      },

                      icon: Icon(Icons.menu),
                    );
                  },
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LocationScreen(),
                      ),
                    );
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Your Location",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            "Mumbai",
                            style: TextStyleMax(
                              //   color: Colors.white,
                              //   fontSize: 14,
                              //   fontWeight: FontWeight.w700,
                              // ),
                            ),),
                          Icon(Icons.keyboard_arrow_down),
                        ],
                      ),
                    ],
                  ),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CartScreen(),
                      ),
                    );
                  },
                  icon: Icon(Icons.shopping_bag_outlined),
                ),
              ],
            ),
          ),
          Positioned(
            top: 100,
            left: 22,
            child: Card(
              child: Container(
                height: 50,
                width: 340,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.transparent,
                ),
                child: Row(
                  children: [
                    SizedBox(width: 20),
                    Icon(Icons.search, size: 18),
                    SizedBox(width: 20),
                    Text("Search"),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
