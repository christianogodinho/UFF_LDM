import 'package:flutter/material.dart';
import 'dart:math';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomeState();
  }
}

List _text_list = [
  "Frase 1",
  "Frase 2",
  "Frase 3",
  "Frase 4",
  "Frase 567.905",
  "Frase 420",
  "Frase 69",
  "Frase 69.420"
];

String basic = "Clique no botão para gerar uma frase aleatória";

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Frases aleatórias",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: (Colors.green),
      ),
      body: Center(
          child: Container(
        child: Column(
          children: [
            Image.asset("images/title.png"),
            Text(
              basic,
              style: TextStyle(fontSize: 30),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                ),
                onPressed: () {
                  setState(() {
                    int random = Random().nextInt(8);
                    basic = _text_list[random];
                  });
                },
                child: Text(
                  "Nova Frase",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ))
          ],
        ),
      )),
      bottomNavigationBar: BottomAppBar(
        color: Colors.lightBlue,
        child: Text("Vrau"),
      ),
    );
  }
}
