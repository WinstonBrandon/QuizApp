import 'package:flutter/material.dart';
import './quiz.dart';
import 'result.dart';

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
      'answer': [
        {'text': 'Hello', 'score': 10},
        {'text': 'Birthday', 'score': 6},
        {'text': 'Queen', 'score': 4}
      ]
    },
    {
      'questionText': 'What is your name?',
      'answer': [
        {'text': 'Jameson', 'score': 10},
        {'text': 'Jenny', 'score': 6},
        {'text': 'Joba', 'score': 4}
      ]
    },
    {
      'questionText': 'What is your profession?',
      'answer': [
        {'text': 'Ahoe!', 'score': 10},
        {'text': 'Deka a Mattie', 'score': 7},
        {'text': 'Blissblaker', 'score': 5},
        {'text': 'SnowconeFlowzone', 'score': 3}
      ]
    },
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My Final Quiz App'),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  questions: _questions,
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                )
              : Result()),
    );
  }
}
