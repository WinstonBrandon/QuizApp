import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

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
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore = _totalScore + score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print('answer chosen');
  }

  var _questions = [
    {
      'questionText': 'What is your favourite song?',
      'answer': [
        {'text': 'BlackBird', 'score': 10},
        {'text': 'Romance', 'score': 8},
        {'text': 'Lobitoch', 'score': 6},
        {'text': 'AiLibi', 'score': 4},
      ]
    },
    {
      'questionText': 'What is your name?',
      'answer': [
        {'text': 'Ruud', 'score': 10},
        {'text': 'Jood', 'score': 6},
        {'text': 'Blaka', 'score': 4}
      ]
    },
    {
      'questionText': 'What is your profession?',
      'answer': [
        {'text': 'Spartan', 'score': 10},
        {'text': 'Soldier', 'score': 8},
        {'text': 'Freeagent', 'score': 6},
        {'text': 'Stylebender', 'score': 4}
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
                  answerQuestion: _answerQuestion,
                  questions: _questions,
                  questionIndex: _questionIndex,
                )
              : Result(_totalScore)),
    );
  }
}
