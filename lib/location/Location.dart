import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import '../bottombar/business.dart';
import '../bottombar/dates.dart';
import '../bottombar/favorite.dart';
import '../bottombar/home.dart';
import '../bottombar/person.dart';
import '../colors.dart';

class Location extends StatefulWidget {
  const Location({Key? key}) : super(key: key);

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
  int currentIndex = 0;

  changebottom(index) {
    currentIndex = index;
  }

  List<Widget> Screen = <Widget>[
    Home(),
    Favorite(),
    Business(),
    Dates(),
    Person(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ConvexAppBar(
        style: TabStyle.fixedCircle,
        color: Colors.black,
        items: [
          TabItem(
            icon: Icons.home,
          ),
          TabItem(icon: Icons.favorite),
          TabItem(icon: Icons.business_center_rounded),
          TabItem(icon: Icons.event_note_rounded),
          TabItem(icon: Icons.person),
        ],
        initialActiveIndex: 0,
        onTap: (index) {
          setState(() {
            changebottom(index);
          });
        },
        backgroundColor: Colors.white,
        activeColor: CustomColor.green1,
      ),
      body: Screen[currentIndex],
    );
  }
}
