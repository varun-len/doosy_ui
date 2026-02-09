import 'package:flutter/material.dart';
import 'package:untitled2/UI_1/run_main.dart';
import 'package:untitled2/UI_4/screen4.dart';
import 'package:untitled2/UI_5/screen5.dart';

import 'Doosy_UI/splash_screen.dart';
import 'UI_2/run_main.dart';
import 'UI_3/notification_page.dart';
import 'UI_6/screen6.dart';

void main() {
  runApp(const MainScreen());
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<Widget> Screens = [screen1(), Screen2(),Screen3(),Screen4(),Screen5(), PageViewExample(),SplashScreen()];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView.builder(
          itemCount: 9,
          itemBuilder: (BuildContext context, int index) {
            return TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Screens[index]),
                );
              },
              child: Text("Screen ${index + 1}"),
            );
          },
        ),
      ),
    );
  }
}

