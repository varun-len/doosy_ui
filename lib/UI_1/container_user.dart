
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


WidgetStateProperty color_for_button() {
  WidgetStateProperty.resolveWith(
          (states) {
        if (states.contains(WidgetState.pressed)) {
          return Colors.red;
        }
        if (states.contains(WidgetState.hovered)) {
          return Colors.blue;
        }
        if (states.contains(WidgetState.disabled)) {
          return Colors.greenAccent;
        }
      }

  );
  return WidgetStatePropertyAll(Colors.greenAccent);
}

Container myContainer(int index) {
  List<String> cardTitles = [
    "Nexus Project ",
    "Nexus Project ",
    "Nexus Project ",
    "Nexus Project ",
    "Nexus Project ",
    "Nexus Project "

  ];
  List<String> cardSubTitles = [
    "3 Participants  ",
    "3 Participants ",
    "3 Participants",
    "3 Participants ",
    "3 Participants ",
    "3 Participants"

  ];
  List<bool> colorHelper = [
    false,
    false,
    false,
    false,
    false,
    false,
  ];
  return Container(
    height: 120,
    width: 360,
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            blurRadius: 2,
          )
        ]
    ),

    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(cardTitles[index % cardTitles.length]),
          SizedBox(
            height: 5,
          ),
          Text(cardSubTitles[index % cardSubTitles.length]),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FilledButton(
              onPressed: () {
                if(colorHelper[index]==true){
                  colorHelper[index]==false;
                }
                else if(colorHelper[index]==false){
                  colorHelper[index]==true;

                }
                setState(){

                }
              },
              child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.alarm),
                Text(cardSubTitles[index % cardSubTitles.length]),
              ],

            ),
              style: ButtonStyle(
                  backgroundColor: (colorHelper[index]) ? WidgetStatePropertyAll(
                      Colors.greenAccent) : WidgetStatePropertyAll(Colors.red),
              ),),
          )
        ],
      ),
    ),
  );
}