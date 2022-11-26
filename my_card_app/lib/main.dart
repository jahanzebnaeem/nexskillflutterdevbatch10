import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.teal,
          body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 60.0,
                  backgroundImage: AssetImage('images/Jahanzeb.jpeg'),
                ),
                Text(
                  'Jahanzeb Naeem',
                  style: TextStyle(
                    fontSize: 40.0,
                    color: Colors.white,
                    fontFamily: 'Pacifico',
                  ),
                ),
                Text(
                  'CTO | Instructor',
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.white,
                    letterSpacing: 2.0,
                    fontFamily: 'Source Sans Pro',
                  ),
                ),
                SizedBox(
                  child: Divider(
                    thickness: 3.0,
                  ),
                  width: 150.0,
                ),
                Container(
                  color: Colors.white,
                  padding: EdgeInsets.all(20.0),
                  margin: EdgeInsets.symmetric(
                    horizontal: 20.0,
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.phone,
                        color: Colors.teal.shade600,
                        size: 30.0,
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      Text(
                        '+92-123-456-7890',
                        style: TextStyle(
                          fontSize: 30.0,
                          color: Colors.teal.shade600,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
    ),
  );
}
