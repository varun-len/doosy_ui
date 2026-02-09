import 'package:flutter/material.dart';
import 'package:untitled2/Doosy_UI/login.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 100),
          SizedBox(
            height: 250,
            width: 700,
            child: Image.asset("assets/welcome.png"),
          ),
          Container(
            margin: EdgeInsets.only(left: 190),
            child: Row(
              children: [
                Container(height: 2, width: 7, color: Colors.grey),
                SizedBox(width: 4),
                Container(
                  height: 7,
                  width: 17,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blueAccent,
                  ),
                ),
                SizedBox(width: 4),
                Container(height: 2, width: 7, color: Colors.grey),
              ],
            ),
          ),
          SizedBox(height: 40),
          Center(
            child: Text(
              "WELCOME",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Center(
              child: Text(
                "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, \n sed diam nonummy nibh euismod tincidunt ut laoreet \ndolore magna.",
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  color: Colors.black45,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 50,
            width: 340,
            decoration: BoxDecoration(color: Colors.greenAccent,
                borderRadius: BorderRadius.circular(12)),
            child: FilledButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder:(context)=>LoginScreen()));
                },
                style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.transparent)
                ),
                child: Center(child: Text("Login", style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                  color: Colors.white,
                ),
                  textAlign: TextAlign.center,
                ),)),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 50,
            width: 340,
            decoration: BoxDecoration(
                color: Colors.grey, borderRadius: BorderRadius.circular(12)),
            child: FilledButton(
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.transparent)
                ),
                child: Center(child: Text("Register", style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                  color: Colors.black,
                ),
                  textAlign: TextAlign.center,
                ),)),
          ),
          SizedBox(
            height: 10,
          ),
          TextButton(onPressed: () {},
              child: Text("Guest User", style: TextStyle(fontSize: 16,
                  color: Colors.greenAccent,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.greenAccent,
                  decorationThickness: 3),))

        ],
      ),
    );
  }
}
