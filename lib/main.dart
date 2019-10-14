import "package:flutter/material.dart";

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {

//  @override
//  MyAppState createState() => MyAppState();
  @override
  MyAppState createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
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
              children: <Widget>[Text(questions[questionIndex])],
            ),
            Row(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    RaisedButton(
                      child: Text("Option 1"),
                      onPressed: answerQuestion,
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    RaisedButton(
                      child: Text("Option 2"),
                      onPressed: answerQuestion,
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    RaisedButton(
                      child: Text("Option 3"),
                      onPressed: answerQuestion,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
