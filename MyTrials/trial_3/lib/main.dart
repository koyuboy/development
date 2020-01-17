import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.red,
        accentColor: Colors.blue,
        textTheme: TextTheme(
          title: TextStyle(color: Colors.red),
        ),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final names = ["Enver", "Muhammet", "Ahmet", "Mehmet"];

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("My Trial_3"),
      ),
      body: Center(
        child: Container(
          height: (mediaQuery.size.height -
                  AppBar().preferredSize.height -
                  mediaQuery.padding.top) *
              1,
          width: double.infinity,
          color: Colors.red,
          child: LayoutBuilder(
            builder: (ctx, constraints) => Column(
              children: <Widget>[
                ...names
                    .map(
                      (item) => Container(
                        height: constraints.maxHeight * 0.25,
                        width: constraints.maxWidth * 0.5,
                        alignment: Alignment.center,
                        color: Colors.amber,
                        child: Card(
                          child: Text(
                            item,
                            textScaleFactor: 2.5,
                          ),
                          color: Colors.black,
                          elevation: 10,
                        ),
                      ),
                    )
                    .toList(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
