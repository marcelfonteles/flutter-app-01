import 'package:flutter/material.dart';


class SecondQuestion extends StatelessWidget {
  String questionText;

  SecondQuestion(this.questionText);

  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      width: screenSize.width,
      margin: EdgeInsets.only(top: 10, bottom: 10),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 18.0),
        textAlign: TextAlign.center,
      ),
    );
  }
}