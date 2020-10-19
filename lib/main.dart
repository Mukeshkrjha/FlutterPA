import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyPAapp());
}

class MyPAapp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Personal Assistant - Ask & Click'),
          backgroundColor: Colors.teal,
        ),
        body: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int imageNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: getAnswer,
        child: Image.asset('images/ball$imageNumber.png'),
      ),
    );
  }

  void getAnswer() {
    setState(() {
      imageNumber = Random().nextInt(5) + 1;
    });
  }
}
