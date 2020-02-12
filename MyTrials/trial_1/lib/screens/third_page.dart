import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/humans_provider.dart';

class ThirdPage extends StatelessWidget {
  static const routeName = '/third-page';

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    var humanData = Provider.of<HumansProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text('Third-Page'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: mediaQuery.height * 0.15,
              width: double.infinity,
              alignment: Alignment.center,
              child: Text(
                'Your Humans',
                style: Theme.of(context).textTheme.body1,
              ),
            ),
            ...humanData.items.map((human) {
              return Container(
                width: double.infinity,
                child: Card(
                  elevation: 10,
                  margin: EdgeInsets.all(10),
                  child: Column(
                    children: <Widget>[
                      Text('id: ${human.id}'),
                      Text('name: ${human.name}'),
                      Text('surname: ${human.surname}'),
                      Text('age: ${human.age}'),
                    ],
                  ),
                ),
              );
            }).toList(),
          ],
        ),
      ),
    );
  }
}
