import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.teal,
          appBar: AppBar(
            backgroundColor: Colors.teal,
            title: Text('My Card'),
          ),
          body: Column(
            children: [
              Container(
                color: Colors.blue,
                width: 100.0,
                height: 100.0,
              ),
              Container(
                color: Colors.red,
                width: 100.0,
                height: 100.0,
              ),
              Container(
                color: Colors.white,
                width: 100.0,
                height: 100.0,
              ),
            ],
          )),
    ),
  );
}
