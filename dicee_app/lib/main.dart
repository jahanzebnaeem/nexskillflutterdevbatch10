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

class DicePage extends StatelessWidget {
  var leftDiceNumber = 1;

  int generateRandomNum() {
    var random = Random();
    return random.nextInt(6) + 1;
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
                  leftDiceNumber = generateRandomNum();
                  print('$leftDiceNumber number');
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
                  'images/dice2.png',
                ),
                onTap: () {
                  print('On tap right dice');
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
