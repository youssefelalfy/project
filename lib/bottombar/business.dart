import 'package:flutter/material.dart';

import 'package:convex_bottom_bar/convex_bottom_bar.dart';

import '../bottombar/business.dart';
import '../bottombar/dates.dart';
import '../bottombar/favorite.dart';
import '../bottombar/home.dart';
import '../bottombar/person.dart';
import '../colors.dart';
import '../location/drawer.dart';
class Business extends StatefulWidget {
  const Business({Key? key}) : super(key: key);

  @override
  State<Business> createState() => _BusinessState();
}

class _BusinessState extends State<Business> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Drawer1(),
      ),
      appBar: AppBar(
        title: Text('LOCATION',style: TextStyle(color: Colors.black),),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.clear_all_rounded ,
                color: Colors.black,
                size: 33, // Changing Drawer Icon Size
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(38.0,0.0,38,14.0),
                child: Image.asset("assets/usa.png"),
              ),
            ),
            Container(
              child: GestureDetector(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(38.0,0.0,38,14.0),
                  child: Image.asset("assets/france.png"),
                ),onTap: (){

              },
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(38.0,0.0,38,14.0),
                child: Image.asset("assets/india.png"),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(38.0,0.0,38,14.0),
                child: Image.asset("assets/england.png"),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(38.0,0.0,38,14.0),
                child: Image.asset("assets/australia.png"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


