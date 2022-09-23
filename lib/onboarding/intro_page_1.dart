import 'package:flutter/material.dart';

class IntroPage1 extends StatelessWidget {
  const IntroPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 90.0),
              child: Image.asset(
                "assets/Logo Color.png",
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 60, bottom: 35),
              child: Image.asset(
                "assets/Vector Image.png",
                width: 400,
              ),
            ),
          ),
          Text(
            "Plan Your Trip",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: 16,
            height: 16,
          ),
          Text(
            "Plan your trip, choose your destination. ",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 14, color: Colors.grey),
          ),
          SizedBox(
            width: 5,
            height: 5,
          ),
          Text(
            "Pick the best place for your holiday.",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 14, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
