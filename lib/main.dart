import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Final Quiz App'),
        ),
        body: Column(
          children: [
            Text('questions'),
            RaisedButton(child: Text('answer 1'), onPressed: null),
            RaisedButton(child: Text('answer 1'), onPressed: null),
            RaisedButton(child: Text('answer 1'), onPressed: null),
          ],
        ),
      ),
    );
  }
}
