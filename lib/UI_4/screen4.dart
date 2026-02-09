import 'package:flutter/material.dart';

class Screen4 extends StatefulWidget {
  const Screen4({super.key});
  @override
  State<Screen4> createState() => _Screen4State();
}

class _Screen4State extends State<Screen4> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body:Center(
        child: Container(
          height: 350,
          width: 600,
          decoration:BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.white
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text("Timing Details",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.black),),
                    Spacer(),
                    Padding(padding: EdgeInsetsGeometry.all(12),child: Container(
                      height: 30,
                        width: 30,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),boxShadow:[
                          BoxShadow(
                            color: Colors.white12,
                            blurRadius:2,

                          ),
                          BoxShadow(
                            color: Colors.white30,
                            blurRadius: 1,

                          ),
                          BoxShadow(
                            color: Colors.white10,
                            blurRadius: 2,

                          )
                        ]),
                        child: Icon(Icons.close)),)
                  ],
                ),
              ),
              Container(
                height: 150,
                width:580,
                decoration: BoxDecoration(

                  borderRadius: BorderRadius.circular(12),


                ),
                child: Card(
                  color:Colors.grey.shade300 ,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          build_Row(title: "clock In", time: "10:00 PM ",icon:Icon(Icons.arrow_downward,size: 12,) ),
                          SizedBox(height: 4,),
                          build_Row(title: "clock In", time: "10:00 PM -12:00 PM" ),
                          SizedBox(height: 4,),
                          build_Row(title: "clock In", time: "10:00 PM -12:00 PM"  ),
                          SizedBox(height: 4,),
                          build_Row(title: "clock In", time: "10:00 PM -12:00 PM" ),
                          SizedBox(height: 4,),
                          build_Row(title: "clock out", time: "7:30 PM" ,icon:Icon(Icons.arrow_upward,size: 12,) ),
                        ],
                      ),
                    ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  height: 80,
                  decoration: BoxDecoration(

                    borderRadius: BorderRadius.circular(12),
                    color: Colors.grey.shade300

                  ),
                  child:ListTile(
                    title: Text("Work Time"),
                    subtitle: Row(
                      children: [
                        Container(
                          height: 8,
                          width:8,
                          decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.blue),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        RichText(text: TextSpan(
                          children: [
                            TextSpan(
                              text: "9",
                              style: TextStyle(fontSize: 18,fontWeight: FontWeight.w800)
                            ),
                            TextSpan(
                                text: "Hrs",
                                style: TextStyle(fontSize: 13,fontWeight: FontWeight.w600)
                            ),
                            TextSpan(
                                text: "8",
                                style: TextStyle(fontSize: 18,fontWeight: FontWeight.w800)
                            ),
                            TextSpan(
                                text: "Minutes",
                                style: TextStyle(fontSize: 13,fontWeight: FontWeight.w600)
                            )
                          ]
                        ),)
                      ],
                    ),
                    trailing: Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(color: Colors.grey.shade300,shape: BoxShape.circle),
                      child:Container(
                          height: 35,
                          width:35,
                        decoration: BoxDecoration(color: Colors.purple,shape: BoxShape.circle),
                        child: Icon(Icons.shopping_bag_outlined,size: 20,color: Colors.white,),
                      ) ,
                    ),
                  )
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}


Widget build_Row({required String title,required String time , Icon? icon}){
  return (icon!=null)?
  Row(
    children: [
      Text(title,style: TextStyle(fontSize: 12,fontWeight: FontWeight.w900),),
      Spacer(),
      Container(height:20,width: 20,decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.lightGreen),child: Center(child: icon)),
      SizedBox(
        width: 10,
      ),
      Text(time)
    ],
  ):Row(
    children: [
      Text(title,style: TextStyle(fontSize: 12,fontWeight: FontWeight.w900),),
      Spacer(),
      SizedBox(
        width: 10,
      ),
      Text(time)
    ],
  );
}

