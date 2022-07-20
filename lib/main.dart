import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print('answer chosen');
  }

  var _questions = [
    {
      'questionText': 'What is your favourite song?',
      'answer': ['Hello', 'Birthday', 'Queen']
    },
    {
      'questionText': 'What is your name?',
      'answer': ['Jameson', 'Jenny', 'Joba']
    },
    {
      'questionText': 'What is your profession?',
      'answer': ['Ahoe!', 'Deka a Mattie', 'Blissblaker', 'SnowconeFlowzone']
    },
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
            Question(_questions[_questionIndex]['questionText'] as String),
            ...(_questions[_questionIndex]['answer'] as List<String>)
                .map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
