import 'package:flutter/material.dart';

import '../screens/third_page.dart';

class SecondPage extends StatelessWidget {
  static const routeName = '/second-page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second-Page'),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () => Navigator.of(context).pushNamed(
            ThirdPage.routeName,
          ),
          child: Text('Go to Third-Page'),
        ),
      ),
    );
  }
}
