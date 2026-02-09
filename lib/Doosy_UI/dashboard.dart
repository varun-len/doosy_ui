import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:untitled2/Doosy_UI/cart_screen.dart';
import 'package:untitled2/Doosy_UI/location.dart';
import 'package:untitled2/Doosy_UI/services.dart';
import 'package:untitled2/Doosy_UI/tracking.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'myOrders.dart';

class HomePage extends StatefulWidget {

 HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();

}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      showMySheet();
    });

  }
  Future<dynamic> showMySheet(){
    return showModalBottomSheet(
      context: context,
      builder: (context) {
        return Wrap(
          children: [
            Container(
              height: 50,
            ),
            Center(
              child:Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                    color:Color(0xff00D9AE),
                ),
                child: Icon(Icons.location_on_outlined),
              ),
            ),
            Container(
              height: 30,
            ),
            Center(child: Text("Device Location off",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w800,color:Colors.black),)),
            Center(child: Text("Please Switch on your device location to find\n nearby provider services on the map.",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color:Colors.black45,),textAlign: TextAlign.center,)),
            Padding(
              padding: const EdgeInsets.all(28.0),
              child: SizedBox(height: 40,width:double.infinity,child: FilledButton(onPressed: (){}, child: Text("Enable Location",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w800,color:Colors.white),),style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Color(0xff00D9AE))),)),
            ),
            Container(
              height: 10,
            ),
            GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(child: Text("No Thanks",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w800,color:Colors.black),)),
              ),
            ),
            Container(
              height: 20,
            ),
          ],
        );
      },
    );
  }
  List<String> image_data = [
    "assets/grocery.png",
    "assets/fruit.png",
    "assets/pizza.png",
    "assets/gift.png",
  ];
  List<String> image_title = ["grocery", "fruit", "pizza", "gift"];
  List<String> image_data1 = [
    "assets/Dabour_logo.png",
    "assets/paraschute.png",
    "assets/india_gate.png",
    "assets/Colgate-Logo.png",
  ];
  List<String> images = [
    "assets/ic_carousel1.png",
    "assets/ic_carousel1.png",
    "assets/ic_carousel1.png",
    "assets/ic_carousel1.png",
  ];
  List<String> image_title1 = ["grocery", "fruit", "pizza", "gift"];
  int _selectedIndex = 0;
  CarouselSliderController? controller;
  final controller1 = PageController(viewportFraction: 0.8, keepPage: true);
  int currentIndex = 0;



  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          SizedBox(
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
                    color:Color(0xff00D9AE),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Builder(
                        builder: (context){
                          return IconButton(onPressed: () {
            // _scaffoldKey.currentState?.openDrawer();
            Scaffold.of(context).openDrawer();
            },

                           icon: Icon(Icons.menu));
                        },
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>LocationScreen()));
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
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Icon(Icons.keyboard_arrow_down),
                              ],
                            ),
                          ],
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>CartScreen()));
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
          ),
          Padding(
            padding: const EdgeInsets.only(top:18.0),
            child: Container(
              height: 230,
              color: Colors.transparent,
              child: Column(
                children: [
                  CarouselSlider(
                    items: images.map((image) {
                      return Stack(
                        children: [
                          Container(
                            height: 320,
                            width: 400,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(22),
                            ),
                            child: Image.asset(image,fit: BoxFit.cover,),
                          ),
                          Positioned(
                            top:40,
                            left:10,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [

                                Text("flat 20% \n off On all Orders",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w600),),
                                Container(
                                  width: 150,
                                  height: 30,
                                  color: Colors.transparent,
                                  child: Row(
                                    mainAxisAlignment:MainAxisAlignment.start,
                                    children: [

                                      Container(
                                        height: 18,
                                        width: 120,
                                        child: Text("click them out",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w600)),
                                      ),
                                      Icon(Icons.arrow_forward_ios,color: Colors.white,)
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      );
                    }).toList(),
                    options: CarouselOptions(
                      height:160,
                      aspectRatio: 16/9,
                      autoPlay: true,
                      enlargeCenterPage: true,
                      onPageChanged: (index, reason) {
                        setState(() {
                          currentIndex = index;
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  DotsIndicator(
                    dotsCount: image_data.length,
                    position: currentIndex.toDouble(),
                    decorator: DotsDecorator(
                      activeColor: Colors.blue,
                      size: const Size.square(8.0),
                      activeSize: const Size(18.0, 8.0),
                      activeShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Card(
                child: SizedBox(
                  height: 50,
                  width: 170,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          height: 30,
                          width: 30,
                          child: Image.asset(
                            "assets/giftbox.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        Text("Send Packages"),
                        Container(
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.greenAccent),
                          ),
                          child: Icon(Icons.arrow_forward_outlined, size: 20),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Card(
                child: SizedBox(
                  height: 50,
                  width: 170,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          height: 20,
                          width: 20,
                          child: Image.asset(
                            "assets/giftbox.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        Text("Send Packages"),
                        Container(
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color:Color(0xff00D9AE)),
                          ),
                          child: Icon(Icons.arrow_forward_outlined, size: 20),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Categories",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
                Text(
                  "View All",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w700,
                    color: Colors.black45,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12, right: 12),
            child: SizedBox(
              height: 119,
              width: double.infinity,
              child: Row(
                children: [
                  Expanded(
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: image_data.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Card(
                                child: SizedBox(
                                  height: 70,
                                  width: 82,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: SizedBox(
                                      height: 20,
                                      width: 40,
                                      child: Image.asset(
                                        image_data[index % image_data.length],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Text(
                                image_title[index % image_title.length],
                                style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18, right: 12),
            child: Text("Newly Registered on Doosy", style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 18),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12, right: 12),
            child: SizedBox(
              height: 119,
              width: double.infinity,
              child: Row(
                children: [
                  Expanded(
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: image_data.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Card(
                                child: SizedBox(
                                  height: 70,
                                  width: 82,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: SizedBox(
                                      height: 20,
                                      width: 20,
                                      child: Image.asset(
                                        image_data1[index % image_data.length],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Text(
                                image_title1[index % image_title.length],
                                style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),

    );
  }

}
