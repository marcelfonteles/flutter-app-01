import "package:flutter/material.dart";

import "./question.dart";
import "./anwser.dart";

class Quizz extends StatelessWidget {
  final List<Map<String, Object>> MAPQUESTIONS;
  final int mapQuestionIndex;
  final Function answerMapQuestion;

  Quizz({@required this.answerMapQuestion, @required this.MAPQUESTIONS, @required this.mapQuestionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Question(
                MAPQUESTIONS[mapQuestionIndex]["questionText"])
          ],
        ),
        Row(
          children: <Widget>[
            Container(
              width: 360,
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                children: <Widget>[
                  Answer(
                      () => answerMapQuestion((MAPQUESTIONS[mapQuestionIndex]["answers"] as List<Map<String, Object>>)[0]["score"]),
                      (MAPQUESTIONS[mapQuestionIndex]["answers"]
                      as List<Map<String, Object>>)[0]),
                  Answer(
                          () => answerMapQuestion((MAPQUESTIONS[mapQuestionIndex]["answers"] as List<Map<String, Object>>)[1]["score"]),
                      (MAPQUESTIONS[mapQuestionIndex]["answers"]
                      as List<Map<String, Object>>)[1]),
                  Answer(
                          () => answerMapQuestion((MAPQUESTIONS[mapQuestionIndex]["answers"] as List<Map<String, Object>>)[2]["score"]),
                      (MAPQUESTIONS[mapQuestionIndex]["answers"]
                      as List<Map<String, Object>>)[2]),
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}