import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselSliderCustomized extends StatefulWidget {
  List<String> images;
  int currentIndex;
   CarouselSliderCustomized({super.key,required this.images,required this.currentIndex});

  @override
  State<CarouselSliderCustomized> createState() => _CarouselSliderCustomizedState(images,currentIndex);
}

class _CarouselSliderCustomizedState extends State<CarouselSliderCustomized> {
  List<String> images;
  int currentIndex;
  _CarouselSliderCustomizedState(this.images,this.currentIndex);
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
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
              child: Image.asset(image, fit: BoxFit.cover),
            ),
            Positioned(
              top: 40,
              left: 10,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "flat 20% \n off On all Orders",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Container(
                    width: 150,
                    height: 30,
                    color: Colors.transparent,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 18,
                          width: 120,
                          child: Text(
                            "click them out",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      }).toList(),
      options: CarouselOptions(
        height: 160,
        aspectRatio: 16 / 9,
        autoPlay: true,
        enlargeCenterPage: true,
        onPageChanged: (index, reason) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}
