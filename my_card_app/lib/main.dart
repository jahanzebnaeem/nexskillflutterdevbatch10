import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.teal,
          appBar: AppBar(
            backgroundColor: Colors.teal,
            title: Text('My Card'),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 60.0,
                backgroundImage: NetworkImage(
                    'https://pbs.twimg.com/media/FSA_6E0XMAAXRXI.jpg'),
              ),
              Text(
                'Jahanzeb Naeem',
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.white,
                  fontFamily: 'Pacifico',
                ),
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
