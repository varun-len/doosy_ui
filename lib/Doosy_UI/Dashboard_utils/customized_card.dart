import 'package:flutter/material.dart';

class CustomizedCard extends StatefulWidget {
  String img;
  String Text;
  IconData icon;
  CustomizedCard({super.key,required this.img ,required this.Text,required this.icon});

  @override
  State<CustomizedCard> createState() => _CustomizedCardState(img,Text,icon);
}

class _CustomizedCardState extends State<CustomizedCard> {
  String img='';
  String text='';
  IconData icon= Icons.hourglass_empty;
  _CustomizedCardState( this.img ,this.text ,this.icon);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        height: 50,
        width: 170,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 20,
                width: 20,
                child: Image.asset(
                  img,
                  fit: BoxFit.cover,
                ),
              ),
              Text(text,style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700,color: Colors.black),),
              Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Color(0xff00D9AE)),
                ),
                child: Icon(Icons.arrow_forward_outlined, size: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
