import 'package:flutter/material.dart';

class IntroPage2 extends StatelessWidget {
  const IntroPage2({Key? key}) : super(key: key);

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
              "assets/vector2.png",
            ),
          )),
          Text(
            "Select The Date",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: 15,
            height: 15,
          ),
          Text(
            " Select the day, book your ticket. We give",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 14, color: Colors.grey),
          ),
          SizedBox(
            width: 5,
            height: 5,
          ),
          Text(
            "you the best price. We guarantied!",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 14, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
