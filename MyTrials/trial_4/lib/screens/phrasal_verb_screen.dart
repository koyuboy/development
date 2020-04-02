import 'package:flutter/material.dart';
import 'package:trial_4/providers/phrasal_verbs_provider.dart';

class PhrasalVerbScreen extends StatelessWidget {
  static const screenName = '/phrasal-verb-screen';

  //TODO: Do responsive.
  @override
  Widget build(BuildContext context) {
    final singleItem = ModalRoute.of(context).settings.arguments as PhrasalVerbItem;
    MediaQueryData mediaQuery =  MediaQuery.of(context);

    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            expandedHeight: mediaQuery.size.height / 3,
            flexibleSpace: FlexibleSpaceBar(
              background: Image(
                image: AssetImage(singleItem.imageUrl),
                fit: BoxFit.cover,
              ),
              title: Text('${singleItem.verb} ${singleItem.adverb}'),
            ),
          ),
          // SliverGrid(
          //   gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          //     maxCrossAxisExtent: 200.0,
          //     mainAxisSpacing: 10.0,
          //     crossAxisSpacing: 10.0,
          //     childAspectRatio: 4.0,
          //   ),
          //   delegate: SliverChildBuilderDelegate(
          //     (BuildContext context, int index) {
          //       return Container(
          //         alignment: Alignment.center,
          //         color: Colors.teal[100 * (index % 9)],
          //         child: Text('Grid Item $index'),
          //       );
          //     },
          //     childCount: 20,
          //   ),
          // ),
          // SliverFixedExtentList(
          //   itemExtent: 50.0,
          //   delegate: SliverChildBuilderDelegate(
          //     (BuildContext context, int index) {
          //       return Container(
          //         alignment: Alignment.center,
          //         color: Colors.lightBlue[100 * (index % 9)],
          //         child: Text('List Item $index'),
          //       );
          //     },
          //   ),
          // ),
        ],
      ),
    );
  }
}
//Ahmet