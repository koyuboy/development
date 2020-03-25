import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:trial_4/providers/phrasal_verbs_provider.dart';

class PhrasalVerbScreen extends StatelessWidget {
  static const screenName = '/phrasal-verb-screen';
  final PhrasalVerbItem singleItem;
  const PhrasalVerbScreen(this.singleItem);

  @override
  Widget build(BuildContext context) {
    //TODO: There are some problems with related to image, solve it.
    return Scaffold(
        body: CustomScrollView(
      slivers: <Widget>[
        const SliverAppBar(
          pinned: true,
          expandedHeight: 250.0,
          flexibleSpace: FlexibleSpaceBar(
            background: Image(
              image: Image.asset(singleItem.imageUrl),
              fit: BoxFit.cover,
            ),
            // background: Image(
            //   image: AssetImage(singleItem.imageUrl),
            // ),
            title: Text('Demo'),
          ),
        ),
        SliverGrid(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200.0,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
            childAspectRatio: 4.0,
          ),
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Container(
                alignment: Alignment.center,
                color: Colors.teal[100 * (index % 9)],
                child: Text('Grid Item $index'),
              );
            },
            childCount: 20,
          ),
        ),
        SliverFixedExtentList(
          itemExtent: 50.0,
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Container(
                alignment: Alignment.center,
                color: Colors.lightBlue[100 * (index % 9)],
                child: Text('List Item $index'),
              );
            },
          ),
        ),
      ],
    )
        // appBar: AppBar(
        //   title: Text(singleItem.verb + ' ' + singleItem.adverb + ' ' + singleItem.preposition),
        // ),
        );
  }
}
