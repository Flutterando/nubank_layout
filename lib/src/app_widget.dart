import 'package:flutter/material.dart';
import 'package:nubank_layout/src/home/home_module.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Slidy',
      theme: ThemeData(
        primaryColor: Color(0xFF84269C),
        canvasColor: Color(0xFF84269C),
        cardColor: Color(0xFF9241A7), //Colors.white54
        dividerColor: Color(0xFFF6F7F6),
      ),
      home: HomeModule(),
    );
  }
}
