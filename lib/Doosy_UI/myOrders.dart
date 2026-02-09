import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  List<String> imageData = [
    "assets/ic_DelightOrders.png",
    "assets/ic_BurgerOrders.png",
    "assets/ic_BreakfastOrders.png",
  ];
  List<String> imageTitles = [
    "Delight Caffe",
    "Burger Knight",
    "BreakFast Daily",
  ];
  List<Map<String, dynamic>> status = [
    {"status": "Placed", "color": Colors.yellow},
    {"status": "Cancelled", "color": Colors.red},
    {"status": "Delivered", "color": Colors.green},
  ];
  late String currentTime;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _updateTime();
  }

  void _updateTime() {
    // Get current local time
    DateTime now = DateTime.now();

    // Format time as HH:mm:ss
    currentTime = DateFormat('HH:mm:ss').format(now);

    // Refresh UI
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 48.0, left: 20),
            child: Icon(Icons.menu, size: 30, color: Colors.black),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 48.0, left: 20),
            child: Text(
              "My Orders",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
            ),
          ),

          Expanded(
            child: ListView.builder(
              itemCount: imageData.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(
                    left: 11,
                    top: 10,
                    bottom: 10,
                    right: 11,
                  ),
                  child: Wrap(
                    children: [
                      Container(
                        height: 110,
                        width: MediaQuery.of(context).size.width,

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade300,
                              blurRadius: 3,
                              spreadRadius: 2,
                              blurStyle: BlurStyle.normal,
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Row(
                            children: [
                              Container(
                                height: 80,
                                width: 100,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(14),
                                  child: Image.asset(
                                    imageData[index],
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 10),
                                  Text(
                                    imageTitles[index],
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "order Id :",
                                        style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w800,
                                        ),
                                      ),
                                      Text(
                                        "2658746",
                                        style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      SizedBox(width: 70),
                                      Text(
                                        status[index]["status"],
                                        style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w800,
                                          color: status[index]["color"],
                                        ),
                                      ),
                                    ],
                                  ),

                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Order Date :",
                                        style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w800,
                                        ),
                                      ),
                                      Text(
                                        " 25-06-2020",
                                        style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      SizedBox(width: 30),
                                      (status[index]["status"] == "Placed")
                                          ? Text(
                                              currentTime,
                                              style: TextStyle(
                                                fontSize: 17,
                                                fontWeight: FontWeight.w800,
                                                color: Colors.greenAccent,
                                              ),
                                            )
                                          : Text(""),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
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
    );
  }
}
