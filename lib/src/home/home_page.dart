import 'package:flutter/material.dart';

import 'bottom_list/bottom_list_widget.dart';
import 'card_list/card_list_widget.dart';
import 'logo/logo_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 25),
          child: Column(
            children: <Widget>[
              LogoWidget(),
              Expanded(child: CardListWidget()),
              BottomListWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
