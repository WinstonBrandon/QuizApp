import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int scoreResult;
  final VoidCallback resetQuizie;
  const Result(
    this.scoreResult,
    this.resetQuizie,
  );

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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            resultPhrase,
            style: const TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            margin: const EdgeInsets.all(30),
            child: ElevatedButton(
              onPressed: resetQuizie,
              child: const Text(
                'restart here',
              ),
            ),
          )
        ],
      ),
    );
  }
}
