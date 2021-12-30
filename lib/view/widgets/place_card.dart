import 'package:flutter/material.dart';
import 'package:travel/model/place.dart';
import 'package:travel/theme.dart';

class PlaceCard extends StatelessWidget {
  final Place? place;
  final int? index;

  const PlaceCard({Key? key, @required this.place, this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      margin: EdgeInsets.only(left: 30, top: 25),
      child: Container(
        height: 170,
        width: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(place!.imageUrl!),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20))),
                ),
                (index == 0)
                    ? Positioned(
                        top: 0,
                        right: 0,
                        child: Container(
                          height: 30,
                          width: 64,
                          decoration: BoxDecoration(
                            color: mainCOlor,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                            ),
                          ),
                          child: Center(
                            child: Image.asset("assets/start.png"),
                          ),
                        ),
                      )
                    : SizedBox(),
              ],
            ),
            Container(
              height: 50,
              width: 120,
              decoration: BoxDecoration(
                color: mainCOlor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Center(
                child: Text(
                  place!.city!,
                  style: textStyle3,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
