import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tripit1/onboarding/onBoarding.dart';

import '../colors.dart';
import 'dart:math' as math;

class MySplashScreen extends StatefulWidget {
  @override
  State<MySplashScreen> createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> {
  void initState(){
    super.initState();
    Timer(Duration(seconds: 2),navigatorToSecondPage);
  }

  void navigatorToSecondPage(){
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => OnBoarding()),);
  }
  @override


  Widget build(BuildContext context) {
    return Material(
      child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [CustomColor.green1, CustomColor.green2],
              begin: FractionalOffset(0.0, 0.0),
              end: FractionalOffset(1.0, 0.0),
              stops: [0.0, 1.0],
              transform: GradientRotation(math.pi / 2),
              tileMode: TileMode.clamp,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Center(
              child: Image.asset("assets/logocolor.png"),
            ),
          )),
    );
  }
}
