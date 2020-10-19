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
          title: Center(child: Text('Personal Assistant')),
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
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            'Ask Your Question and Click below',
            style: TextStyle(color: Colors.blueAccent, fontSize: 23.0),
          ),
        ),
        FlatButton(
          onPressed: getAnswer,
          child: Image.asset('images/ball$imageNumber.png'),
        ),
      ],
    );
  }

  void getAnswer() {
    setState(() {
      imageNumber = Random().nextInt(5) + 1;
    });
  }
}
