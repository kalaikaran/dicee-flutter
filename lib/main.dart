import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(MyDiceApp());
}

class MyDiceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          title: Text('Dice'),
          backgroundColor: Colors.blue,
        ),
        body: DicePageStateFull(),
      ),
    );
  }
}

class DicePageStateFull extends StatefulWidget {
  @override
  _DicePageStateFullState createState() => _DicePageStateFullState();
}

class _DicePageStateFullState extends State<DicePageStateFull> {
  int leftDiceNumber = 5, rightDiceNumber = 2;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
//                padding: const EdgeInsets.all(16.0),
              onPressed: () {
                setState(() {
                  leftDiceNumber = _randomPick(true);
                  rightDiceNumber = _randomPick(true);
                });
              },
              child: Container(
                color: Colors.yellowAccent.shade700,
                child: Image.asset('images/dice$leftDiceNumber.png'),
              ),
            ),
          ),
          Expanded(
            child: FlatButton(
//                padding: const EdgeInsets.all(16.0),
              onPressed: () {
                setState(() {
                  leftDiceNumber = _randomPick(false);
                  rightDiceNumber = _randomPick(false);
                });
              },
              child: Container(
                color: Colors.red,
                child: Image.asset('images/dice$rightDiceNumber.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

int _randomPick(bool isLeft) {
  if (isLeft) {
    return Random().nextInt(6) + 1;
  } else {
    int randomPick;
    do {
      randomPick = Random().nextInt(7);
    } while (randomPick == 0);
    return randomPick;
  }
}

class DicePage extends StatelessWidget {
  int leftDiceNumber = 5, rightDiceNumber = 2;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
//                padding: const EdgeInsets.all(16.0),
              onPressed: () {
                print('First button got Pressed!!');
                leftDiceNumber = Random().nextInt(6);
                print(leftDiceNumber);
              },
              child: Container(
                color: Colors.yellowAccent.shade700,
                child: Image.asset('images/dice$leftDiceNumber.png'),
              ),
            ),
          ),
          Expanded(
            child: FlatButton(
//                padding: const EdgeInsets.all(16.0),
              onPressed: () {
                print('Second button got Pressed!!');
              },
              child: Container(
                color: Colors.red,
                child: Image.asset('images/dice$rightDiceNumber.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
