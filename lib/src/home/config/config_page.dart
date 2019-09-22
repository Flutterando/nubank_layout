import 'package:flutter/material.dart';
import 'package:nubank_layout/src/shared/widgets/button/button_widget.dart';

class ConfigPage extends StatefulWidget {
  @override
  _ConfigPageState createState() => _ConfigPageState();
}

class _ConfigPageState extends State<ConfigPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: ListTileTheme(
        textColor: Colors.white,
        iconColor: Colors.white,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(40, 0, 40, 100),
            child: Column(
              children: <Widget>[
                SizedBox(height: 15),
                Image.network("https://i.imgur.com/hXgSlZn.png"),
                SizedBox(height: 10),
                Text.rich(
                  TextSpan(children: [
                    TextSpan(text: "Banco "),
                    TextSpan(
                      text: "260",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextSpan(text: " - Nu Pagamentos S.A.\n"),
                    TextSpan(text: "Agência "),
                    TextSpan(
                      text: "0001\n",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextSpan(text: "Conta "),
                    TextSpan(
                      text: "40028922-1",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ]),
                  style:
                      TextStyle(color: Colors.white, letterSpacing: 1, height: 2),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 30),
                Divider(height: 0),
                ListTile(
                  contentPadding: EdgeInsets.all(0),
                  leading: Icon(Icons.help_outline),
                  title: Text("Me ajuda"),
                  trailing: Icon(Icons.keyboard_arrow_right),
                ),
                Divider(height: 0),
                ListTile(
                  contentPadding: EdgeInsets.all(0),
                  leading: Icon(Icons.person_outline),
                  title: Text("Perfil"),
                  trailing: Icon(Icons.keyboard_arrow_right),
                ),
                Divider(height: 0),
                ListTile(
                  contentPadding: EdgeInsets.all(0),
                  leading: Icon(Icons.monetization_on),
                  title: Text("Configurar NuConta"),
                  trailing: Icon(Icons.keyboard_arrow_right),
                ),
                Divider(height: 0),
                ListTile(
                  contentPadding: EdgeInsets.all(0),
                  leading: Icon(Icons.credit_card),
                  title: Text("Configurar Cartão"),
                  trailing: Icon(Icons.keyboard_arrow_right),
                ),
                Divider(height: 0),
                ListTile(
                  contentPadding: EdgeInsets.all(0),
                  leading: Icon(Icons.phone_iphone),
                  title: Text("Configurações do app"),
                  trailing: Icon(Icons.keyboard_arrow_right),
                ),
                Divider(height: 0),
                SizedBox(height: 30),
                ButtonWidget(
                  text: "SAIR DA CONTA",
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
