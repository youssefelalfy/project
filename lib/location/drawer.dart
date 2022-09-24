import 'package:flutter/material.dart';
import 'package:tripit1/bottombar/business.dart';
import 'package:tripit1/bottombar/home.dart';
import 'package:tripit1/intro_screens/Signin/signin.dart';
import 'package:tripit1/location/Location.dart';

class Drawer1 extends StatefulWidget {
  const Drawer1({Key? key}) : super(key: key);

  @override
  State<Drawer1> createState() => _Drawer1State();
}

class _Drawer1State extends State<Drawer1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [ GestureDetector(child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 50, 20, 0),
              child: Image.asset("assets/cancel.png"),
            ),
              onTap: () {
                Navigator.of(context).pop(
                  MaterialPageRoute(builder: (context) => Business()),);
              },
            ),
            ],
          ),
          Container(
            child: Image.asset("assets/Profile.png"), width: 200, height: 200,
          ),
          SizedBox(height: 10,),
          Container(
            child: Image.asset("assets/Notification.png"), width: 280,
          ),
          SizedBox(height: 20,),
          GestureDetector(
            child: Container(
              child: Image.asset("assets/Tours.png"), width: 280, height: 40,
            ),
            onTap: () {
              Navigator.of(context).pop(
                MaterialPageRoute(builder: (context) => Home()),);
            },
          ),
          SizedBox(height: 20,),
          GestureDetector(
            child: Container(
              child: Image.asset("assets/Location.png"), width: 280,
            ),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => Home()),);
            },
          ),
          SizedBox(height: 20,),
          Container(
            child: Image.asset("assets/Language.png"), width: 280, height: 40,
          ),
          SizedBox(height: 20,),
          Container(
            child: Image.asset("assets/Invite Friends.png"), width: 280,
          ),
          SizedBox(height: 20,),
          Container(
            child: Image.asset("assets/Line.png"), width: 280,
          ),
          SizedBox(height: 20,),
          Container(
            child: Image.asset("assets/Help Center.png"), width: 280,
          ),
          SizedBox(height: 20,),
          Container(
            child: Image.asset("assets/Setting.png"), width: 280, height: 40,
          ),
          SizedBox(height: 20,),
          GestureDetector(
            child: Container(
              child: Image.asset("assets/Log Out.png"), width: 280,
            ),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => SignIn()),);
            },
          ),
          SizedBox(height: 20,),

        ],
      ),
    );
  }
}
