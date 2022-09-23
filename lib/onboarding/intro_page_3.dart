import 'package:flutter/material.dart';
class IntroPage3 extends StatelessWidget {
  const IntroPage3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 90.0),
              child: Image.asset("assets/Logo Color.png",
              ),
            ),
          ),
          Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 60,bottom: 35),
                child: Image.asset("assets/vector3.png",),
              )),
          Text("Enjoy Your Trip",
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold
            ),),
          SizedBox(
            width: 15,
            height: 15,
          ),
          Text(" Enjoy your holiday! don't forget to take",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 14,
                color: Colors.grey
            ),
          ),
          SizedBox(
            width: 5,
            height: 5,
          ),
          Text("a photo and share to the world",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 14,
                color: Colors.grey
            ),),
        ],
      ),
    );
  }
}
