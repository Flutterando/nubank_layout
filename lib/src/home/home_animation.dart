import 'package:flutter/widgets.dart';

mixin HomeAnimation<T extends StatefulWidget>
    on State<T>, TickerProviderStateMixin<T> {
  AnimationController controller;
  Animation<double> configOpacityAnimation;
  Animation<double> listOpacityAnimation;
  Animation<double> cardAnimation;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 300),
    );

    configOpacityAnimation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(controller);

    listOpacityAnimation = Tween<double>(
      begin: 1,
      end: 0,
    ).animate(controller);

    cardAnimation = Tween<double>(
      begin: 0,
      end: MediaQuery.of(context).size.height * 0.7,
    ).animate(
      controller
      // CurvedAnimation(
      //   curve: Curves.easeInOut,
      //   reverseCurve: Curves.easeInOut,
      //   parent: controller,
      // ),
    );
  }

  void toggleAnimation() {
    if (controller.value > 0)
      controller.reverse();
    else
      controller.forward();
  }
}
