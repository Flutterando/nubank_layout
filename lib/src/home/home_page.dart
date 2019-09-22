import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
        child: Column(
          children: <Widget>[
            SizedBox(height: 25),
            LogoWidget()
          ],
        ),
      ),
    );
  }
}


