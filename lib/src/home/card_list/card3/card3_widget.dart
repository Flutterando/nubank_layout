import 'package:flutter/material.dart';
import 'package:nubank_layout/src/shared/widgets/button/button_widget.dart';
import '../card/card_widget.dart';

class Card3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CardWidget(
      child: MediaQuery(
        data: MediaQuery.of(context).copyWith(
          textScaleFactor: MediaQuery.of(context).size.width * 0.002,
        ),
        child: Padding(
          padding: const EdgeInsets.all(45),
          child: Column(
            children: <Widget>[
              Icon(Icons.card_giftcard),
              SizedBox(height: 25),
              Text(
                "Nubank Rewards",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              SizedBox(height: 15),
              Text(
                "Acumule pontos que nunca expiram e troque por passagens aéreas ou serviços que você realmente usa.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  letterSpacing: 2,
                ),
              ),
              Spacer(),
              ButtonWidget(
                text: "ATIVE O SEU REWARDS",
                color: Theme.of(context).primaryColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
