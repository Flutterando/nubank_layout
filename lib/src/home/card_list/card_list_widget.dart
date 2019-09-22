import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

import 'card1/card1_widget.dart';
import 'card3/card3_widget.dart';

class CardListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(0, -50),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            SingleChildScrollView(
              physics: PageScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  Card1(),
                  Card1(),
                  Card3(),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                DotsIndicator(
                  dotsCount: 3,
                  position: 0,
                  decorator: DotsDecorator(
                    size: Size(4, 4),
                    activeSize: Size(5, 5),
                    color: Colors.white54,
                    activeColor: Colors.white,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}