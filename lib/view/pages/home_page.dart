import 'package:flutter/material.dart';
import 'package:travel/model/place.dart';
import 'package:travel/theme.dart';
import 'package:travel/view/pages/detail_page.dart';
import 'package:travel/view/widgets/event_card.dart';
import 'package:travel/view/widgets/place_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List titles = ['All', 'Asia', 'America', 'Europe', 'Africa', 'Australia'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(top: 30, left: 30, right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage(
                              "assets/user.jpg",
                            ),
                            fit: BoxFit.cover),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Hello michalle', style: textStyle2),
                        Text(
                          'Good Morning',
                          style: textStyle4,
                        )
                      ],
                    )
                  ],
                ),
                Image.asset('assets/cari.png')
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 30, top: 25, right: 25),
            child: Text(
              'Let\'s enjoy your \nvacation',
              style: textStyle1,
            ),
          ),
          Container(
            height: 35,
            margin: EdgeInsets.only(left: 30, top: 25),
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: titles.length,
                itemBuilder: (context, index) {
                  return Padding(
                      padding: const EdgeInsets.only(right: 30.0),
                      child: Column(
                        children: [
                          Text(
                            titles[index],
                            style: textStyle3.copyWith(
                                color: (index == 0) ? mainCOlor : Colors.white),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          (index == 0)
                              ? Container(
                                  height: 2,
                                  width: 12,
                                  color: mainCOlor,
                                )
                              : SizedBox(),
                        ],
                      ));
                }),
          ),
          Container(
            margin: EdgeInsets.only(top: 36, left: 30, right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Popular Countries',
                  style: textStyle2,
                ),
                Text(
                  'See All',
                  style: textStyle3.copyWith(color: Colors.white),
                )
              ],
            ),
          ),
          Container(
            height: 200,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: places.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailPage(),
                          ),
                        );
                      },
                      child: PlaceCard(index: index, place: places[index]));
                }),
          ),
          Container(
            margin: EdgeInsets.only(top: 40, left: 40, right: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Ongoing Events',
                  style: textStyle2,
                ),
                Text(
                  'See All',
                  style: textStyle3.copyWith(color: Colors.white),
                )
              ],
            ),
          ),
          Container(
            height: 205,
            margin: EdgeInsets.only(top: 40, left: 30, right: 30),
            child: ListView.builder(
                itemCount: events.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: EventCard(
                      place: events[index],
                    ),
                  );
                }),
          ),
          SizedBox(
            height: 100,
          )
        ],
      ),
    );
  }
}
