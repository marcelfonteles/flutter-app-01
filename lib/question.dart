import "package:flutter/material.dart";

class Question extends StatelessWidget {
  String questionText;

  Question(this.questionText);

  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      width: screenSize.width,
      margin: EdgeInsets.only(top: 10, bottom: 10),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 18),
        textAlign: TextAlign.center,
      ),
    );
  }
}
