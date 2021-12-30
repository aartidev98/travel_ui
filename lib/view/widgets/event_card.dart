import 'package:flutter/material.dart';
import 'package:travel/model/place.dart';
import 'package:travel/theme.dart';

class EventCard extends StatelessWidget {
  final Place? place;
  const EventCard({Key? key, this.place}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 210,
      width: 230,
      padding: EdgeInsets.only(left: 20, top: 20),
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(place!.imageUrl!), fit: BoxFit.cover),
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "${place!.event!}",
            style: textStyle2,
          ),
          Text(
            place!.city!,
            style: textStyle2,
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Image.asset('assets/map.png'),
              SizedBox(
                width: 6,
              ),
              Text(
                place!.country!,
                style: textStyle2,
              )
            ],
          )
        ],
      ),
    );
  }
}
