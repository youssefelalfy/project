import 'package:flutter/material.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';
import '../location/drawer.dart';
import 'package:tripit1/bottombar/card.dart';

class CardItem {
  final String Image;

  const CardItem({
    required this.Image,
  });
}

class CardItem2 {
  final String Image;

  const CardItem2({
    required this.Image,
  });
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<CardItem> item1 = [
    CardItem(Image: 'assets/Paris.png'),
    CardItem(Image: 'assets/Los Anglos.png'),
    CardItem(Image: 'assets/india2.png'),
    CardItem(Image: 'assets/New York.png'),
  ];
  List<CardItem2> item3 = [
    CardItem2(Image: 'assets/Places 01.png'),
    CardItem2(Image: 'assets/Places 02.png'),
    CardItem2(Image: 'assets/Places 03.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Drawer1(),
      ),
      appBar: AppBar(
        title: Text(
          'Tours',
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
            Padding(
              padding: const EdgeInsets.only(right: 180),
              child: Image.asset("assets/t1.png"),
            ),
            Container(
              height: 155,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (context, index) => buildCard(item: item1[index]),
                separatorBuilder: (context, index) => SizedBox(width: 0),
              ),
            ),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: Container(
                      child:
                          Image.asset("assets/Offer.png", fit: BoxFit.cover)),
                ),
                Padding(
                    padding: const EdgeInsets.only(top: 90.0),
                    child: SizedBox(
                      height: 165,
                      child: ScrollSnapList(
                        initialIndex: 1,
                        itemBuilder: buildListItem,
                        itemCount: 3,
                        itemSize: 250, //مش عارف اظبط الابعاد بالظبط
                        onItemFocus: (index) {},
                        dynamicItemSize: true,
                      ),
                    ))
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 180),
              child: Image.asset("assets/t2.png"),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              height: 195,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, index) =>
                    buildCard2(item3: item3[index]),
                separatorBuilder: (context, index) => SizedBox(width: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildCard({required CardItem item}) => Container(
        width: 108,
        child: Column(
          children: [Expanded(child: Image.asset(item.Image))],
        ),
      );

  Widget buildCard2({required CardItem2 item3}) => Container(
        width: 110,
        child: Column(
          children: [Image.asset(item3.Image)],
        ),
      );

  Widget buildListItem(BuildContext context, index) {
    var card = item2[index];
    return SizedBox(
      width: 250,
      height: 136,
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        child: Column(
          children: [
            Image.asset(
              card.ImagePath,
              fit: BoxFit.cover,
              width: 250,
              height: 136,
            ),
          ],
        ),
      ),
    );
  }
}
