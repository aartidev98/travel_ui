import 'package:flutter/material.dart';
import 'package:travel/view/pages/detail_page.dart';
import 'package:travel/view/pages/home_page.dart';
import 'package:travel/view/pages/main_page.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //theme: ThemeData.dark(),
      home: HomePage(),
    );
  }
}
