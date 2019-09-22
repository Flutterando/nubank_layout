import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final Widget child;

  const CardWidget({Key key, this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: MediaQuery.of(context).size.height * 0.15,
      ),
      child: Card(
        color: Colors.white,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(5),
          child: AspectRatio(
            aspectRatio: 1,
            child: child,
          ),
        ),
      ),
    );
  }
}
