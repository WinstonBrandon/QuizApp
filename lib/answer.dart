import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;

  Answer(this.selectHandler);

  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: RaisedButton(
          color: Colors.amber,
          textColor: Colors.white,
          child: Text('answer 1'),
          onPressed: selectHandler),
    );
  }
}
