import 'package:flutter/material.dart';

//void main() {
//  runApp(MyApp());
//}

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questions = [
    "Question 1?",
    "Question 2?",
    "Question 3?"
  ];

  var questionIndex = 0;

  void anwserQuestion() {
    setState(() {
      if (questionIndex < 2) {
        questionIndex += 1;
      }
    });
    print(questionIndex);
  }

  @override
  Widget build(BuildContext ctx) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: Column(children: [
          Row(children: [
            Text(questions[questionIndex]),
          ]),
          Row(children: [
            RaisedButton(
              child: Text("Answer 1"),
              onPressed: anwserQuestion,
            ),
            RaisedButton(
              child: Text("Answer 2"),
              onPressed: anwserQuestion,
            ),
            RaisedButton(
              child: Text("Answer 3"),
              onPressed: anwserQuestion,
            ),
          ]),
        ]),
      ),
    );
  }
}
