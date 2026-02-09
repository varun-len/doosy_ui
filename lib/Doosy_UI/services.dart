import 'package:flutter/material.dart';

class ServicesScreen extends StatefulWidget {
  const ServicesScreen({super.key});

  @override
  State<ServicesScreen> createState() => _ServicesScreenState();
}

class _ServicesScreenState extends State<ServicesScreen> {
  List<String> imageData=[
    "assets/gift.png",
    "assets/pizza.png",
    "assets/ic_drugs.png",
    "assets/ic_online-shopping.png"
  ];
  List<String> imageTitles=[
    "Send packages",
    "Order Food",
    "Medicines",
    "Stores"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 48.0, left: 20),
            child: Icon(Icons.menu,size: 30,color: Colors.black,),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 48.0, left: 20),
            child: Text(
              "Services",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18.0, top: 10),
            child: Text(
              "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna.",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.black45,
              ),
              textAlign: TextAlign.start,
            ),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
              ),
              itemCount: 4,
              itemBuilder: (context,index){
                return Padding(
                  padding: const EdgeInsets.only(left: 18.0,right: 18.0),

                  child: Column(
                    children: [
                      Container(
                        height: 100,
                        width: 200,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black45,
                              blurRadius: 2
                            )
                          ],
                          borderRadius: BorderRadius.circular(12)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0,top: 10,bottom: 8,right: 8),
                          child: Image.asset(imageData[index%imageData.length]),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(imageTitles[index%imageTitles.length]),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
