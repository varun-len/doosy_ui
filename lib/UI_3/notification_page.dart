import 'package:flutter/material.dart';

class Screen3 extends StatefulWidget {
  const Screen3({super.key});

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(32),
              boxShadow:[
                BoxShadow(
                  color: Colors.black54,blurRadius: 1
                ),
                BoxShadow(
                    color: Colors.white30,blurRadius: 4
                ),
                BoxShadow(
                    color: Colors.white12,blurRadius: 5
                )
              ]
            ),
            child: Icon(Icons.arrow_back,color: Colors.black54,),
          ),
        ),
      ),

      body:Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text("Notification",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w700),),
                Spacer(),
                Text("Clear All",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700),),

              ],
            ),

          ),
          SizedBox(
            height: 130,
          ),
          Center(
            child: Container(
              height: 120,
                width: 120,
                child: Image.network("https://cdn-icons-png.flaticon.com/512/8294/8294951.png",fit: BoxFit.cover,)),
          ),
          Text("No Notifications Found",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600),)
        ],
      )
    );
  }
}
