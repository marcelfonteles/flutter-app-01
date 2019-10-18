import "package:flutter/material.dart";

import "./question.dart";
import "./question2.dart";
import "./anwser.dart";

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
  var questions = [
    "What's your favorite color?",
    "What's your favorite animal?",
    "What's your favorite sports team?"
  ];
  var questionIndex = 0;

  var mapQuestions = [
    {
      "questionText": "What\'s your favorite color?",
      "answers": ["Red", "Green", "Blue"]
    },
    {
      "questionText": "What\'s is your favorite animal?",
      "answers": ["Lion", "Rabbit", "Snake"]
    },
    {
      "questionText": "What\'s is the best sports team",
      "answers": ["Fortaleza", "Bahia", "Sao Paulo"]
    }
  ];
  var mapQuestionIndex = 0;

  void answerMapQuestion() {
    setState(() {
      if (mapQuestionIndex< 2) {
        mapQuestionIndex += 1;
      } else {
        mapQuestionIndex = 0;
      }
    });
  }

  void answerQuestion() {
    setState(() {
      if (questionIndex < 2) {
        questionIndex += 1;
      } else {
        questionIndex = 0;
      }
    });
  }

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
            Row(
              children: <Widget>[
                Question(mapQuestions[mapQuestionIndex]["questionText"])
              ],
            ),
            Row(
              children: <Widget>[
                Container(
                  child: Row(
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Answer(answerMapQuestion, "Option 1"),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Answer(answerMapQuestion, "Option 2"),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Answer(answerMapQuestion, "Option 3"),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
            Row(
              children: <Widget>[
                SecondQuestion(secondQuestions[secondIndex]),
              ],
            ),
            Row(
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
            )
          ],
        ),
      ),
    );
  }
}
