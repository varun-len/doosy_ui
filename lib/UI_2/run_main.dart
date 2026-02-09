import 'package:flutter/material.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: Container(
          height: 280,
          width: 480,
          child: Card(

            color: Colors.white,
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top:58.0),
              child: Column(
                children: [
                  Container(
                    height: 60,
                      width: 60,
                      child: Image.network("https://static.vecteezy.com/system/resources/previews/019/782/567/large_2x/party-popper-emoticon-free-png.png",fit: BoxFit.cover,)),
                  SizedBox(height: 20,),
                  Text("Password changed successfully",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w800),),
                  SizedBox(height: 10,),
                  Text("Your desired password has been changed provide \n login needs for further experience"),
                ],
              ),
            ),
          ),
        ),
      )
    );
  }
}
