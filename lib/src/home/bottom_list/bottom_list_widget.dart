import 'package:flutter/material.dart';

class BottomListWidget extends StatelessWidget {
  const BottomListWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            CardWidget(Icons.person_outline, "Indicar Amigos"),
            CardWidget(Icons.chat_bubble_outline, "Cobrar"),
            CardWidget(Icons.monetization_on, "Depositar"),
            CardWidget(Icons.attach_money, "Transferir"),
            CardWidget(Icons.settings, "Ajustar limite"),
            CardWidget(Icons.restore_page, "Pagar"),
            CardWidget(Icons.lock_open, "Bloquear cartão"),
            CardWidget(Icons.credit_card, "Cartão virtual"),
            CardWidget(Icons.filter_list, "Organizar atalhos"),
          ],
        ),
      ),
    );
  }
}

class CardWidget extends StatelessWidget {
  final IconData icon;
  final String text;

  const CardWidget(this.icon, this.text, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        width: 100,
        child: AspectRatio(
          aspectRatio: 1,
          child: Padding(
            padding: const EdgeInsets.all(5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(
                  icon,
                  color: Colors.white,
                  size: 32,
                ),
                Text(
                  text,
                  style: TextStyle(color: Colors.white, fontSize: 16),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
