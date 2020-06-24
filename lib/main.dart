import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final Random _random = new Random();
  Color _randomColor = Colors.lightGreen;

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Random app', style: TextStyle(color: _randomColor)),
          backgroundColor: Colors.white,
        ),
        body: Center(
          child: GestureDetector(
            onTap: () {
              // Change the color of the container beneath
              setState(() {
                _randomColor = Color.fromRGBO(_random.nextInt(256),
                    _random.nextInt(256), _random.nextInt(256), 1.0);
              });
            },
            child: new Container(
              width: double.infinity,
              height: double.infinity,
              color: _randomColor,
              child: Text(
                "Hey there.",
                style: TextStyle(fontSize: 30.0),
              ),
              alignment: Alignment(0.0, 0.0),
            ),
          ),
        ),
      ),
    );
  }
}
