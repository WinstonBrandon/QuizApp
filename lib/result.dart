import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  Result(this.resultScore);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 12) {
      resultText = 'Waoww!';
    } else if (resultScore <= 15) {
      resultText = 'woei!';
    } else if (resultScore <= 18) {
      resultText = 'Mainn!';
    } else {
      resultText = 'too late buddy';
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
