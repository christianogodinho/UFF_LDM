import 'package:flutter/material.dart';
import 'dart:math';

class Jhome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomeState();
  }
}

List _image_list = [
  "images/papel.png",
  "images/pedra.png",
  "images/tesoura.png",
];

List _text_list = ["Papel!", "Pedra!", "Tesoura!"];

String image_basic = "images/default.png";
String text_basic = "";

class HomeState extends State<Jhome> {
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
              Image.asset(image_basic),
              Text(
                text_basic,
                style: TextStyle(fontSize: 30),
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                  ),
                  onPressed: () {
                    setState(() {
                      int random = Random().nextInt(3);
                      image_basic = _image_list[random];
                      text_basic = _text_list[random];
                    });
                  },
                  child: Text(
                    "Nova Jogada!",
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
