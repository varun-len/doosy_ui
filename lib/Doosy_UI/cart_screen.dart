import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  List<Map<String, dynamic>> item = [
    {"title": "Veg Pattice", "subtitle": "Oil", "price": "₹ 35"},
    {"title": "Veg Pattice", "subtitle": "Oil", "price": "₹ 35"},

  ];
  int count = 1;

  TextEditingController? textcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 330,
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 48.0, left: 20),
                  child: Icon(
                    Icons.arrow_back_ios,
                    size: 20,
                    color: Colors.black,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 28.0, left: 20),
                  child: Text(
                    "My Cart",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                ),
                Container(
                  height: 190,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.separated(
                    itemCount: item.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8),
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.only(
                              left: 8.0,
                              right: 8,
                              top: 2,
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Container(
                                    height: 10,
                                    width: 10,
                                    decoration: BoxDecoration(
                                      border: BoxBorder.all(
                                        color: Colors.black,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: Center(
                                        child: CircleAvatar(
                                          backgroundColor: Colors.green,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      item[index]["title"],
                                      style: TextStyle(
                                        fontWeight: FontWeight.w800,
                                        fontSize: 18,
                                      ),
                                    ),
                                    Text(
                                      item[index]["subtitle"],
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 18,
                                      ),
                                    ),
                                    Text(
                                      item[index]["price"],
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),

                                  child: Container(
                                    height: 22,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(18),
                                      border: BoxBorder.all(
                                        color: Colors.greenAccent,
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            count--;
                                            setState(() {});
                                          },
                                          child: Container(
                                            height: 25,
                                            width: 10,

                                            child: Center(
                                              child: Icon(
                                                Icons.remove,
                                                size: 10,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: 25,
                                          width: 18,

                                          child: Center(child: Text("$count")),
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            count++;
                                            setState(() {});
                                          },
                                          child: Container(
                                            height: 25,
                                            width: 10,

                                            child: Icon(Icons.add, size: 10),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.only(
                          top: 8.0,
                          left: 18.0,
                          right: 18.0,
                        ),
                        child: Divider(thickness: 1.5),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 4.0, bottom: 4),
            child: Container(
              padding: EdgeInsets.only(left: 20),
              height: 50,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Row(
                children: [
                  Icon(Icons.edit_calendar_outlined, size: 30),
                  SizedBox(width: 10),
                  Expanded(
                    child: TextField(
                      controller: textcontroller,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Add Instructions ?",
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10),
                  Text(
                    "Payment Summary",
                    style: TextStyle(fontWeight: FontWeight.w800, fontSize: 24),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Text(
                        "Total Item",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                        ),
                      ),
                      Spacer(),
                      Text(
                        "$count",
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 8.0,
                      left: 2.0,
                      right: 2.0,
                    ),
                    child: Divider(thickness: 1.5),
                  ),
                  Row(
                    children: [
                      Text(
                        "Delivery Charge",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                        ),
                      ),
                      Spacer(),
                      Text(
                        "Rs 30",
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 8.0,
                      left: 2.0,
                      right: 2.0,
                    ),
                    child: Divider(thickness: 1.5),
                  ),
                  Row(
                    children: [
                      Text(
                        "Total Amount",
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 18,
                        ),
                      ),
                      Spacer(),
                      Text(
                        "Rs 275",
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          border: BoxBorder.all(color: Colors.greenAccent),color: Colors.white,
                          borderRadius: BorderRadius.circular(12)
                      ),
                      child: FilledButton(
                          style: ButtonStyle(
                              backgroundColor: WidgetStatePropertyAll(Colors.transparent)
                          ),
                          onPressed: () {},
                          child: Container(
                            child: Text("Add More", style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 18,
                              color: Colors.black
                            ),
                            ),
                          )
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: BoxBorder.all(color: Colors.greenAccent),color: Colors.greenAccent,
                        borderRadius: BorderRadius.circular(12)
                      ),
                      child: FilledButton(
                        style: ButtonStyle(
                          backgroundColor: WidgetStatePropertyAll(Colors.transparent)
                        ),
                          onPressed: () {},
                          child: Container(
                            decoration: BoxDecoration(
                              border:BoxBorder.all(color: Colors.greenAccent),
                            ),
                            child: Text("CHECKOUT", style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Colors.black,
                                fontSize: 18),),
                          )
                      ),
                    ),
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
