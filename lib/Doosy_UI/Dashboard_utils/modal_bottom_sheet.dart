import 'package:flutter/material.dart';

Future<dynamic> showMySheet(BuildContext context) {
  return showModalBottomSheet(
    context: context,
    builder: (context) {
      return Wrap(
        children: [
          Container(height: 50),
          Center(
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xff00D9AE),
              ),
              child: Icon(Icons.location_on_outlined),
            ),
          ),
          Container(height: 30),
          Center(
            child: Text(
              "Device Location off",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w800,
                color: Colors.black,
              ),
            ),
          ),
          Center(
            child: Text(
              "Please Switch on your device location to find\n nearby provider services on the map.",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: Colors.black45,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(28.0),
            child: SizedBox(
              height: 40,
              width: double.infinity,
              child: FilledButton(
                onPressed: () {},
                child: Text(
                  "Enable Location",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                    color: Colors.white,
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Color(0xff00D9AE)),
                ),
              ),
            ),
          ),
          Container(height: 10),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  "No Thanks",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
          Container(height: 20),
        ],
      );
    },
  );
}