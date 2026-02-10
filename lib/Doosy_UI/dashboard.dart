import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:untitled2/Doosy_UI/Dashboard_utils/carousel_slider.dart';
import 'package:untitled2/Doosy_UI/Dashboard_utils/customized_card.dart';
import 'package:untitled2/Doosy_UI/Dashboard_utils/customized_drawer.dart';
import 'package:untitled2/Doosy_UI/Dashboard_utils/listview_builder.dart';
import 'Dashboard_utils/customized_appbar.dart';
import 'Dashboard_utils/modal_bottom_sheet.dart';

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
      showMySheet(context);
    });
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
      drawer: CustomizedDrawer(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomizedAppbar(),
          Padding(
            padding: const EdgeInsets.only(top: 18.0),
            child: Container(
              height: 230,
              color: Colors.transparent,
              child: Column(
                children: [
                  CarouselSliderCustomized(images: images, currentIndex: currentIndex),
                  SizedBox(height: 20),
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

              CustomizedCard(img:"assets/giftbox.png", Text: "Send Packages", icon: Icons.arrow_forward_outlined),
              CustomizedCard(img:"assets/giftbox.png", Text: "Send Packages", icon: Icons.arrow_forward_outlined)

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
                    child: ListViewBuilderCustomized(image_data: image_data, image_title: image_title)
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18, right: 12),
            child: Text(
              "Newly Registered on Doosy",
              style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18),
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
                    child:  ListViewBuilderCustomized(image_data: image_data1, image_title: image_title1),
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
