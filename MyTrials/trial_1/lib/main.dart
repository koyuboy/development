import 'package:flutter/material.dart';


void main() => runApp(MyApp());



class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String text = "Hello";

  final myTrialList = const[
    "myButton1",
    "myButton2",
    "myButton3",
    "myButton4",
    "myButton5",
    "myButton6",
  ];


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("MyAppBar"),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Text(text),
              RaisedButton(
                onPressed: (){setState(() {
                  text = "button1";
                });},
                child: Text("button1"),
              ),
              RaisedButton(
                onPressed: (){setState(() {
                  text = "button2";
                });} ,
                child: Text("button2"),
              ),
              ...(myTrialList as List<String>).map(
                (myString){
                  return RaisedButton(
                    onPressed: null,
                    child: Text(
                      myString
                    ),
                  );
                }
              ).toList(),
            ],
          ),
        ),
      ),
    );
  }
}