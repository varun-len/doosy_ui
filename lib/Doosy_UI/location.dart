import 'package:flutter/material.dart';
import 'package:untitled2/Doosy_UI/register.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController? phoneController=TextEditingController();
    return Scaffold(
        body:SingleChildScrollView(
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
                }, icon:Icon(Icons.arrow_back_ios,size: 30,)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30,top: 10),
                child: Text("Search Your Location", style: TextStyle(
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
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  controller: phoneController,
                  decoration: InputDecoration(
                      label: Text("Address Search "),

                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                          borderSide: BorderSide(color: Colors.greenAccent)
                      ),
                      focusedBorder: OutlineInputBorder(

                          borderRadius: BorderRadius.circular(14),
                          borderSide:BorderSide(color: Colors.blue)

                      )
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0,right: 28.0),
                child: Row(
                  children: [
                    Expanded(child:Container(
                      height: 3,
                      width: 120,
                      color: Colors.black12,
                    )),
                    Text("OR"),
                    Expanded(child:Container(
                      height: 3,
                      width: 120,
                      color: Colors.black12,
                    ))
                ]
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:18.0,top: 20),
                child: Row(
                  children: [
                    Icon(Icons.location_on_outlined,size: 30,),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Select Location via Map",style: TextStyle(fontSize: 20),)
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                thickness: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0,top: 20),
                child: Text("Saved addresses",style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
                  textAlign: TextAlign.center,
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0,top: 20),
                    child: Icon(Icons.home,size: 30,),
                  ),
                  Padding(

                    padding: const EdgeInsets.only(left: 18.0,top: 20),
                    child: Text("Home",style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.black45,
                    ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0,top: 10),
                child: Text("2nd floor, apt no. 402, kayline Avenue, st. Michael road, shanti nagar, Mumbai, Maharashtra 560027, india",style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.black45,
                ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        )
    );
  }
}
