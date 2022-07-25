import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int scoreResult;
  Result(this.scoreResult);

  String get resultPhrase {
    String resultText;

    if (scoreResult <= 12) {
      resultText = 'Woaw man!';
    } else if (scoreResult <= 14) {
      resultText = 'Good go!';
    } else if (scoreResult <= 16) {
      resultText = 'Oh ohww!';
    } else {
      resultText = 'Sucks man..';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(resultPhrase),
    );
  }
}
