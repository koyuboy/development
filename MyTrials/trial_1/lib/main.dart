import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './providers/humans_provider.dart';
import './screens/first_page.dart';
import './screens/second_page.dart';
import './screens/third_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => HumansProvider(),
      child: MaterialApp(
        theme: ThemeData(
          brightness: Brightness.dark,
          primarySwatch: Colors.purple,
          accentColor: Colors.amber,
          buttonTheme: ButtonThemeData(
            buttonColor: Colors.green,
            textTheme: ButtonTextTheme.normal,
          ),
          textTheme: TextTheme(
            body1: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold
            ),
            title: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        initialRoute: FirstPage.routeName,
        routes: {
          FirstPage.routeName: (ctx) => FirstPage(),
          SecondPage.routeName: (ctx) => SecondPage(),
          ThirdPage.routeName: (ctx) => ThirdPage(),
        },
      ),
    );
  }
}
