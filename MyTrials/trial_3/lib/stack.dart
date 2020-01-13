import 'package:flutter/material.dart';

class MyStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        Container(
          height: 100,
          width: 100,
          color: Theme.of(context).primaryColor,
        ),
        Container(
          height: 50,
          width: 50,
          color: Colors.amber,
        ),
        Container(
          height: 25,
          width: 25,
          color: Colors.orange,
        ),
      ],
    );
  }
}