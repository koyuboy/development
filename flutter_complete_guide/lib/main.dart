import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>{
  var questionIndex = 0;

  void answerQuestion()
  {
    setState(() {
      questionIndex += 1;
    });
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {

    var questions = [
      "What\'s your favorite color?",
      "What\'s your favorite animal?",
    ];

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("My First App"),
          ),
          body: Column(
            children: <Widget>[
              Text(questions[questionIndex],),
              RaisedButton(
                child: Text("answer1"),
                onPressed: answerQuestion,
              ),
              RaisedButton(
                child: Text("answer2"),
                onPressed: answerQuestion,
              ),
              RaisedButton(
                child: Text("answer3"),
                onPressed: answerQuestion,
              ),
            ],
          )),
    );
  }
}
