import 'package:flutter/material.dart';
import '../card/card_widget.dart';

class Card1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CardWidget(
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Container(
              padding: const EdgeInsets.all(25),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Icon(Icons.credit_card, color: Colors.black54),
                            SizedBox(width: 15),
                            Text(
                              "Cartão de crédito",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black54,
                              ),
                            ),
                          ],
                        ),
                        Expanded(
                          child: MediaQuery(
                            data: MediaQuery.of(context).copyWith(
                              textScaleFactor:
                                  MediaQuery.of(context).size.width * 0.003,
                            ),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                width: double.infinity,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      "FATURA ATUAL",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF00BDC6),
                                      ),
                                    ),
                                    Text(
                                      "R\$ 1.828,24",
                                      style: TextStyle(
                                        color: Color(0xFF00BDC6),
                                        fontSize: 30,
                                      ),
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                        Text("Limite disponível "),
                                        Text(
                                          "R\$ 406,34",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xFF9CD236),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      width: 8,
                      color: Colors.black,
                      child: Column(
                        children: <Widget>[
                          Container(
                            height: 110,
                            color: Colors.yellow,
                          ),
                          Container(
                            height: 100,
                            color: Color(0xFF00BDC6),
                          ),
                          Container(
                            height: 50,
                            color: Color(0xFF9CD236),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Theme.of(context).dividerColor,
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                children: <Widget>[
                  Icon(Icons.settings),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Text(
                        "Compra mais recente em Netflix.Com no valor de R\$ 45,90 ontem",
                      ),
                    ),
                  ),
                  Icon(Icons.keyboard_arrow_right),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
