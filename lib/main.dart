import "package:flutter/material.dart";
import 'package:quizz_app/question2.dart';

import "./question.dart";

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
                Question(questions[questionIndex])
              ],
            ),
            Row(
              children: <Widget>[
                Container(
                  child: Row(
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(right: 10),
                            child: RaisedButton(
                              child: Text("Option 1"),
                              onPressed: answerQuestion,
                              elevation: 5.0,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(right: 10),
                            child: RaisedButton(
                              child: Text("Option 2"),
                              onPressed: answerQuestion,
                              elevation: 5.0,
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          RaisedButton(
                            child: Text("Option 3"),
                            onPressed: answerQuestion,
                            elevation: 5.0,
                          ),
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
