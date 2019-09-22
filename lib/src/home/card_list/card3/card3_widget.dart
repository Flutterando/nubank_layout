import 'package:flutter/material.dart';
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
              Container(
                width: double.infinity,
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(vertical: 20),
                margin: EdgeInsets.symmetric(horizontal: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Theme.of(context).primaryColor),
                ),
                child: Text(
                  "ATIVE O SEU REWARDS",
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
