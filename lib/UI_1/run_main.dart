import 'package:flutter/material.dart';
import 'package:untitled2/UI_1/container_user.dart';

void main(){
  runApp(screen1());
}
class screen1 extends StatefulWidget {
  const screen1({super.key});

  @override
  State<screen1> createState() => _screen1State();
}

class _screen1State extends State<screen1> {

  List<bool> colorHelper = List.generate(6, (_) => false);
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

    return Container(
      height: 120,
      width: 360,
      decoration: BoxDecoration(
          color: (index%2==0)?Colors.white:Colors.black,
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
                  setState(() {
                    colorHelper[index] = !colorHelper[index];
                  });
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
                      Colors.blue) : WidgetStatePropertyAll(Colors.red),
                ),),
            )
          ],
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.greenAccent,
        body: ListView.builder(
          itemCount: 3,
            itemBuilder: (BuildContext context,int index){
          return Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0,right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    myContainer(index * 2),
                    myContainer(index * 2 + 1),

                  ],
                ),
              ),
            ],
          );
        }),
    );
  }
}
