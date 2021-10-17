import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var temp = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '$temp',
                  style: TextStyle(fontSize: 50),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      temp = Random().nextInt(100);
                    });
                  },
                  child: Text('Random Number'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
