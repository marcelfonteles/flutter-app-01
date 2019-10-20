import "package:flutter/material.dart";

import "./quizz.dart";
import "./result.dart";
import "./question2.dart";

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
//  @override
//  MyAppState createState() => MyAppState();
  @override
  _MyAppState createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final MAPQUESTIONS = [
    {
      "questionText": "What\'s your favorite color?",
      "answers": [{"text": "Red", "score": 5}, {"text": "Green", "score": 3}, {"text": "Blue", "score": 5}]
    },
    {
      "questionText": "What\'s is your favorite animal?",
      "answers": [{"text": "Lion", "score": 5}, {"text": "Rabbit", "score": 3}, {"text": "Snake", "score": 2}]
    },
    {
      "questionText": "What\'s is the best sports team",
      "answers": [{"text": "Fortaleza", "score": 128}, {"text": "Bahia", "score": 10}, {"text": "Ceará", "score": -999}]
    }
  ];
  var mapQuestionIndex = 0;

  void answerMapQuestion(int score) {
    setState(() {
      mapQuestionIndex += 1;
      totalScore += score;
    });
  }

  var totalScore = 0;

  var secondQuestions = [
    "Second Question 01",
    "Second Question 02",
    "Second Question 03",
    "Second Question 0104",
  ];
  var secondIndex = 0;

  void answerSecondQuestion() {
    setState(() {
      if (secondIndex < 3) {
        secondIndex += 1;
      } else {
        secondIndex = 0;
      }
    });
  }

  void pressedCompleted() {
    setState(() {
      mapQuestionIndex = 0;
      totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("My First App"),
          ),
        ),
        body: Column(
          children: <Widget>[
            mapQuestionIndex < MAPQUESTIONS.length
                ? Quizz(
                    answerMapQuestion: answerMapQuestion,
                    MAPQUESTIONS: MAPQUESTIONS,
                    mapQuestionIndex: mapQuestionIndex,
                  )
                : Result(
                    pressedCompleted: pressedCompleted,
                    score: totalScore,
                  ),
            Row(
              children: <Widget>[
                SecondQuestion(secondQuestions[secondIndex]),
              ],
            ),
            Container(
              width: 360,
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    child: RaisedButton(
                      child: Text("Opcao 01"),
                      onPressed: answerSecondQuestion,
                      elevation: 5.0,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    child: RaisedButton(
                      child: Text("Opcao 02"),
                      onPressed: answerSecondQuestion,
                      elevation: 5.0,
                    ),
                  ),
                  RaisedButton(
                    child: Text("Opcao 03"),
                    onPressed: answerSecondQuestion,
                    elevation: 5.0,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
