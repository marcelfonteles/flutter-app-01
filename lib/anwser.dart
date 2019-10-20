import "package:flutter/material.dart";

class Answer extends StatelessWidget {
  final Function answerHandler;
  final Map<String, Object> option;

  Answer(this.answerHandler, this.option);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      child: RaisedButton(
        color: Colors.blue,
        child: Text(
          this.option["text"],
          style: TextStyle(color: Colors.white),
        ),
        onPressed: answerHandler,
        elevation: 5.0,
      ),
    );
  }
}
