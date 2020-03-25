import 'package:flutter/material.dart';

import '../widgets/unit_items.dart';
import '../widgets/my_drawer.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: Text('Phrasal Verbs'),
      ),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (ctx, index) => UnitItems(unitNumber: index),
      )
    );
  }
}
