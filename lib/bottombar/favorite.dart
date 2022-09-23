import 'package:flutter/material.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';
import 'package:tripit1/bottombar/Places.dart';
import '../location/drawer.dart';

class Favorite extends StatefulWidget {
  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  List<Places> item = [
    Places('assets/1.png'),
    Places('assets/2.png'),
    Places('assets/3.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Drawer1(),
      ),
      appBar: AppBar(
        title: Text(
          'Paris',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.clear_all_rounded,
                color: Colors.black,
                size: 33, // Changing Drawer Icon Size
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.black,
              )),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset("assets/Mask  Image.png"),
                Padding(
                  padding: const EdgeInsets.only(top: 27.0),
                  child: Center(child: Image.asset("assets/Heading Text.png")),
                ),
                Padding(
                    padding: const EdgeInsets.only(top: 160.0),
                    child: SizedBox(
                      height: 165,
                      child: ScrollSnapList(
                        initialIndex: 1,
                        itemBuilder: _buildListItem,
                        itemCount: 3,
                        itemSize: 155,
                        onItemFocus: (index) {},
                        dynamicItemSize: true,
                      ),
                    ))
              ],
            ),
            SizedBox(
              height: 14,
            ),
            Container(
              child: Image.asset("assets/Title.png"),
            ),
            SizedBox(height: 20),
            Container(
              child: Image.asset("assets/Details.png"),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildListItem(BuildContext context, index) {
    Places places = item[index];
    return SizedBox(
      width: 155,
      height: 157,
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        child: Column(
          children: [
            Image.asset(
              places.ImagePath,
              fit: BoxFit.cover,
              width: 155,
              height: 157,
            ),
          ],
        ),
      ),
    );
  }
}
