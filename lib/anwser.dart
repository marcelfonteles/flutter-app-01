import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function answerHandler;
  final String option;

  Answer(this.answerHandler, this.option);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      child: RaisedButton(
        color: Colors.blue,
        child: Text(
          this.option,
          style: TextStyle(color: Colors.white),
        ),
        onPressed: answerHandler,
        elevation: 5.0,
      ),
    );
  }
}
