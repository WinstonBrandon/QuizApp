import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print('answer chosen');
  }

  var _questions = [
    'What is your favourite song?',
    'What is your name?',
    'What is your profession?'
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Final Quiz App'),
        ),
        body: Column(
          children: [
            Text(_questions[_questionIndex]),
            RaisedButton(child: Text('answer 1'), onPressed: _answerQuestion),
            RaisedButton(child: Text('answer 1'), onPressed: _answerQuestion),
            RaisedButton(child: Text('answer 1'), onPressed: _answerQuestion),
          ],
        ),
      ),
    );
  }
}
