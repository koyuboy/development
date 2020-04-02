import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../providers/phrasal_verbs_provider.dart';
import '../screens/phrasal_verb_screen.dart';

class UnitDetailed extends StatelessWidget {
  final PhrasalVerbItem singleItem;

  UnitDetailed(this.singleItem);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(8.0),
        child: GestureDetector(
          onTap: () => Navigator.of(context).pushNamed(
            PhrasalVerbScreen.screenName, arguments: singleItem,
          ),
          child: GridTile(
            footer: Text(
              singleItem.verb +
                  ' ' +
                  singleItem.adverb +
                  ' ' +
                  singleItem.preposition,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.red, fontSize: 16, fontWeight: FontWeight.bold),
            ),
            child: Image.asset(
              singleItem.imageUrl,
              fit: BoxFit.contain,
            ),
          ),
        ));
  }
}
