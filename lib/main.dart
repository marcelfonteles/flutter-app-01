import 'package:flutter/material.dart';

//void main() {
//  runApp(MyApp());
//}

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: Column(
          children: [
            Text("The Question?"),
            Row(
              children: [
                RaisedButton(child: Text("Answer 1")),
                RaisedButton(child: Text("Answer 2")),
                RaisedButton(child: Text("Answer 3")),
              ]
            )
          ]
        ),
      ),
    );
  }
}
