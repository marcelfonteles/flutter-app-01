import "package:flutter/material.dart";

class Result extends StatelessWidget {
  final Function pressedCompleted;
  final int score;

  Result({@required this.pressedCompleted, @required this.score});

  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      Container(
        width: 360,
        padding: EdgeInsets.only(left: 40, right: 40),
        margin: EdgeInsets.only(top: 10, bottom: 10),
        child: RaisedButton(
          color: score < 0 ? Colors.red : Colors.green,
          child: Text(
            "Score: " + score.toString(),
            style: TextStyle(color: Colors.white),
          ),
          onPressed: pressedCompleted,
        ),
      ),
    ]);
  }
}