import 'package:flutter/material.dart';
import 'dart:math';

import 'package:flutter/services.dart';

class JVhome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomeState();
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

class _HomeState extends State<JVhome> {
  TextEditingController nomeController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  String dados = "";
  bool? checkbox1 = false;
  bool? checkbox2 = false;
  String? radio1 = "";
  bool switch1 = false;
  double slider = 5;

  void _save() {
    dados = nomeController.text + " , " + emailController.text;

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Jogo da Velha",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: (const Color.fromARGB(255, 106, 76, 175)),
      ),
      body: Center(
          child: Container(
        child: Column(
          children: [
            TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  labelText: "Nome:", labelStyle: TextStyle(fontSize: 15)),
              enabled: true,
              maxLength: 10,
              maxLengthEnforcement: MaxLengthEnforcement.none,
              obscureText: false,
              onSubmitted: (String value) {
                print("OnSubmitted: $value");
              },
              controller: nomeController,
            ),
            Slider(
                min: 1,
                max: 10,
                value: slider,
                onChanged: (double value) {
                  print("Slider: $value");
                  slider = value;
                  setState(() {});
                }),
            TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  labelText: "E-mail:", labelStyle: TextStyle(fontSize: 15)),
              enabled: true,
              maxLength: 10,
              maxLengthEnforcement: MaxLengthEnforcement.none,
              obscureText: false,
              onSubmitted: (String value) {
                print("OnSubmitted: $value");
              },
              controller: emailController,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                ),
                onPressed: _save,
                child: Text(
                  "Salvar",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                )),
            Text(
              "Dados Salvos: $dados",
              style: TextStyle(fontSize: 30),
            ),
            CheckboxListTile(
                title: Text("3x3"),
                value: checkbox1,
                activeColor: Colors.green,
                onChanged: (bool? value) {
                  print("Checkbox1: $value");
                  checkbox1 = value;
                  setState(() {});
                }),
            CheckboxListTile(
                title: Text("4x4"),
                value: checkbox2,
                activeColor: Colors.green,
                onChanged: (bool? value) {
                  print("Checkbox2: $value");
                  checkbox2 = value;
                  setState(() {});
                }),
            RadioListTile(
                title: Text("Feminino"),
                value: "f",
                groupValue: radio1,
                onChanged: (String? value) {
                  radio1 = value;
                  print("Radio: $value");
                  setState(() {});
                }),
            RadioListTile(
                title: Text("Masculino"),
                value: "m",
                groupValue: radio1,
                onChanged: (String? value) {
                  radio1 = value;
                  print("Radio2: $value");
                  setState(() {});
                }),
            SwitchListTile(
                title: Text("4x4"),
                value: switch1,
                activeColor: Colors.green,
                onChanged: (bool value) {
                  print("Switch: $value");
                  switch1 = value;
                  setState(() {});
                }),
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
