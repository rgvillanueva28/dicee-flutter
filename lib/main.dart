import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green,
        appBar: AppBar(
          centerTitle: true,
          title: Text('Dice One!'),
          backgroundColor: Colors.lightGreen,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int dice1 = Random().nextInt(6) + 1;
  int dice2 = Random().nextInt(6) + 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                buttonClicked();
              },
              child: Image.asset('images/dice$dice1.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                buttonClicked();
              },
              child: Image.asset('images/dice$dice2.png'),
            ),
          ),
        ],
      ),
    );
  }

  void buttonClicked() {
    setState(() {
      dice1 = Random().nextInt(6) + 1;
      dice2 = Random().nextInt(6) + 1;
    });
  }
}
