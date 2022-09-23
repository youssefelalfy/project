import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:tripit1/bottombar/person.dart';
import '../colors.dart';
import 'business.dart';
import 'dates.dart';
import 'favorite.dart';
import 'home.dart';
class bottombar extends StatefulWidget {
  const bottombar({Key? key}) : super(key: key);

  @override
  State<bottombar> createState() => _bottombarState();
}

class _bottombarState extends State<bottombar> {
  int currentIndex=0;
  changebottom(index){
    currentIndex=index;
  }
  List Screen =[
    Home(),
    Favorite(),
    Business(),
    Dates(),
    Person(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Screen[currentIndex],
      bottomNavigationBar: ConvexAppBar(
        style: TabStyle.fixedCircle,color: Colors.black,
        items: [
          TabItem(icon: Icons.home,   ),
          TabItem(icon: Icons.favorite ),
          TabItem(icon: Icons.business_center_rounded ),
          TabItem(icon: Icons.event_note_rounded  ),
          TabItem(icon: Icons.person ),
        ],
        initialActiveIndex:currentIndex ,
        onTap:(index){changebottom(index);} ,
        backgroundColor: Colors.white,
        activeColor: CustomColor.green1,
      ),
    );
  }
}
