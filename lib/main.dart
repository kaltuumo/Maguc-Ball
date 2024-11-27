import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BallPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class BallPage extends StatefulWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  State<BallPage> createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  var _ballNum = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('Ask Me Anything'),
        backgroundColor: Colors.blue[900],
      ),
      body: Container(
        child: TextButton(
            onPressed: () {
              setState(() {
                _ballNum = Random().nextInt(4) + 1;
              });
              print('I got clicked');
              print(_ballNum);
            },
            child: Center(child: Image.asset('images/magic$_ballNum.png'))),
      ),
    );
  }
}
