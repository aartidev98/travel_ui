import 'package:flutter/material.dart';
import 'package:travel/theme.dart';
import 'package:travel/view/pages/home_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SafeArea(
          child: PageView(
            children: [
              HomePage(),
            ],
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            color: bgColor2,
            height: 68,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Image.asset("assets/home.png"),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      "Home",
                      style: textStyle4.copyWith(
                          color: mainCOlor,
                          decoration: TextDecoration.none,
                          fontSize: 14),
                    )
                  ],
                ),
                Image.asset("assets/Notif.png"),
                Image.asset("assets/Menu.png"),
                Image.asset("assets/Setting.png")
              ],
            ),
          ),
        )
      ],
    );
  }
}
