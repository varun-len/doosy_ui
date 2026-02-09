import 'package:flutter/material.dart';
import 'package:untitled2/Doosy_UI/register.dart';

class TrackingScreen extends StatefulWidget {
  const TrackingScreen({super.key});

  @override
  State<TrackingScreen> createState() => _TrackingScreenState();
}

class _TrackingScreenState extends State<TrackingScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController? phoneController = TextEditingController();
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                Container(
                  width: double.infinity,
                decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft:Radius.circular(12),
            topRight: Radius.circular(12)),
        boxShadow: [
          BoxShadow(
              color: Colors.black45,
              blurRadius: 5
          )

        ],),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    SizedBox(
    height: 70,
    ),
    Padding(
    padding: const EdgeInsets.only(left:20.0),
    child: IconButton(onPressed:(){
    Navigator.pop(context);
    }, icon:Icon(Icons.menu,size: 30,)),
    ),
    Padding(
    padding: const EdgeInsets.only(left: 30,top: 10),
    child: Text("Tracking", style: TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.w500,
    color: Colors.black,
    ),
    textAlign: TextAlign.center,
    ),
    ),
    SizedBox(
    height: 20,
    ),
    ],
    ),
    ),
    SizedBox(
    height: 800,
    child: Stack(
    children: [
    Container(
    height: double.infinity,
    color: Colors.white,

    ),
    Positioned(
    top: 0,
    child: Container(
    height: 250,
    color: Colors.red,
    child: Image.asset("assets/ic_map.png",fit: BoxFit.cover,),
    ),
    ),
    Positioned(
    top:240,
    child: Container(
    height: 550,
    width: double.infinity,
    decoration: BoxDecoration(
    borderRadius: BorderRadius.only(topLeft:Radius.circular(12),topRight:Radius.circular(12)),
    boxShadow: [
    BoxShadow(
    color: Colors.black45,
    blurRadius: 5
    )
    ],
    color: Colors.white
    ),
    child: Padding(
    padding: const EdgeInsets.all(12.0),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Text("ETA : 10 Minutes",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 18,color: Colors.black45),),
    SizedBox(
    height: 10,
    ),
    Text("Order ID : 65329845",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 18,color: Colors.black),),
    SizedBox(
    height: 15,
    ),
    Row(
    children: [
    Text("Order Date",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 20,color: Colors.black),),
    Spacer(),
    Text("30-06-2020",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 20,color: Colors.black),),

    ],
    ),
    SizedBox(
    height: 10,
    ),
    Divider(
    thickness: 3,
    ),
    SizedBox(
    height: 10,
    ),
    Row(
    children: [
    Text("Deliver Boy Name",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 20,color: Colors.black),),
    Spacer(),
    Text("Rajesh K",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 20,color: Colors.black),),

    ],
    ),
    SizedBox(
    height: 5,
    ),
    Divider(
    thickness: 3,
    ),
    Row(
    children: [
    Text("Phone",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 20,color: Colors.black),),
    Spacer(),
    Text("+ 91 9568 856 152",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 20,color: Colors.black),),

    ],
    ),
    Divider(
    thickness: 3,
    ),
    SizedBox(
    height: 50,
    ),
    Container(
    margin: EdgeInsets.only(left: 20),
    height: 50,
    width: 340,
    decoration: BoxDecoration(
    color: Color(0xff00D9AE), borderRadius: BorderRadius.circular(12)),
    child: FilledButton(
    onPressed: () {},
    style: ButtonStyle(
    backgroundColor: WidgetStatePropertyAll(Colors.transparent)
    ),
    child: Center(child: Text("check order status", style: TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w800,
    color: Colors.white,
    ),
    textAlign: TextAlign.center,
    ),)),
    ),
    ],
    ),
    ),

    ),
    )
    ],
    ),
    ),
    ],
    ),
    )
    );
  }
}
