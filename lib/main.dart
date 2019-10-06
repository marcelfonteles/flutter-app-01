import 'package:flutter/material.dart';

//void main() {
//  runApp(MyApp());
//}

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // Some code here...
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var index2 = 0;
  var questions = ["Whats is your name?", "What\'s is your favorite color?"];

  void answerQuestion() {
    setState(() {
      index2 += 1;
    });
    print(index2);
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
            Text(questions.elementAt(index2)),
          ]),
          Row(children: [
            RaisedButton(
              child: Text("Answer 1"),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text("Answer 2"),
              onPressed: () => print("Anwser 2"),
            ),
            RaisedButton(
              child: Text("Answer 3"),
              onPressed: () {
                // Do some stuff..
                print("Anwser 3.");
              },
            ),
          ]),
        ]),
      ),
    );
  }
}
