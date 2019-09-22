import 'package:flutter/material.dart';

import 'bottom_list/bottom_list_widget.dart';
import 'card_list/card_list_widget.dart';
import 'config/config_page.dart';
import 'home_animation.dart';
import 'logo/logo_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with TickerProviderStateMixin, HomeAnimation {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 25),
          child: Column(
            children: <Widget>[
              GestureDetector(
                behavior: HitTestBehavior.translucent,
                child: LogoWidget(),
                onTap: () => toggleAnimation(),
              ),
              Expanded(
                child: Stack(
                  children: <Widget>[
                    AnimatedBuilder(
                      animation: configOpacityAnimation,
                      child: ConfigPage(),
                      builder: (context, child) {
                        return Opacity(
                          opacity: configOpacityAnimation.value,
                          child: child,
                        );
                      },
                    ),
                    AnimatedBuilder(
                      animation: listOpacityAnimation,
                      child: Column(
                        children: <Widget>[
                          Spacer(),
                          BottomListWidget(),
                        ],
                      ),
                      builder: (context, child) {
                        return Opacity(
                          opacity: listOpacityAnimation.value,
                          child: child,
                        );
                      },
                    ),
                    AnimatedBuilder(
                      animation: cardAnimation,
                      child: GestureDetector(
                        behavior: HitTestBehavior.translucent,
                        onVerticalDragUpdate: (details) {
                          controller.value += details.primaryDelta /
                              MediaQuery.of(context).size.height * 1.5;
                        },
                        onVerticalDragEnd: (details) {
                          if (controller.value > 0.2)
                            controller.forward();
                          else
                            controller.reverse();
                        },
                        child: Transform.translate(
                          offset: Offset(0, cardAnimation.value),
                          child: CardListWidget(),
                        ),
                      ),
                      builder: (context, child) {
                        return Transform.translate(
                          offset: Offset(0, cardAnimation.value),
                          child: child,
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
