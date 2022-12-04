import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  int generateRandomNum() {
    return Random().nextInt(6) + 1;
  }

  void changeDiceFace() {
    setState(() {
      leftDiceNumber = generateRandomNum();
      rightDiceNumber = generateRandomNum();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: GestureDetector(
                child: Image.asset(
                  'images/dice$leftDiceNumber.png',
                ),
                onTap: () {
                  changeDiceFace();
                  // print('$leftDiceNumber number');
                  // print('On tap left dice');
                },
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: GestureDetector(
                child: Image.asset(
                  'images/dice$rightDiceNumber.png',
                ),
                onTap: () {
                  changeDiceFace();
                  // print('$rightDiceNumber number');
                  // print('On tap right dice');
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
