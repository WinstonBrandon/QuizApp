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
