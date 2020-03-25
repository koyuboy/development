import 'package:flutter/material.dart';

class PhrasalVerbItem {
  int unit;
  String verb;
  String adverb;
  String preposition;
  String definition;
  String imageUrl;

  PhrasalVerbItem({
    @required this.unit,
    @required this.verb,
    this.adverb = '',
    this.preposition = '',
    @required this.definition,
    @required this.imageUrl,
  });
}

class PhrasalVerbsProvider with ChangeNotifier {
  final _items = [
    PhrasalVerbItem(
      unit: 1,
      verb: 'Find',
      adverb: 'out',
      definition:
          '​to get some information about something/somebody by asking, reading, etc.',
      imageUrl: 'assets/images/find_out.png',
    ), 
    PhrasalVerbItem(
      unit: 1,
      verb: 'Look',
      adverb: 'for',
      definition:
          '​to try to find (something or someone), often a thing or person that is lost.',
      imageUrl: 'assets/images/look_for.gif',
    ), 
    PhrasalVerbItem(
      unit: 1,
      verb: 'Look',
      adverb: 'up',
      definition:
          'to find (or try to find) something (e.g. a telephone number) in a book (e.g. a telephone directory).',
      imageUrl: 'assets/images/look_up.jpg',
    ), 
    PhrasalVerbItem(
      unit: 1,
      verb: 'Look',
      adverb: 'over',
      definition:
          'to examine (someone or something) carefully and fully.',
      imageUrl: 'assets/images/look_over.jpg',
    ), 
    PhrasalVerbItem(
      unit: 1,
      verb: 'Look',
      adverb: 'round',
      definition:
          'to visit and tour round a place.',
      imageUrl: 'assets/images/look_round.jpg',
    ), 
    PhrasalVerbItem(
      unit: 1,
      verb: 'Look',
      adverb: 'into',
      definition:
          'to investigate; to carefully examine a situation or event and try to discover the reasons for it.',
      imageUrl: 'assets/images/look_into.png',
    ), 
  ];

  int get getLength {
    return _items.length;
  }

  List<PhrasalVerbItem> get getItems {
    return [..._items];
  }

  List<PhrasalVerbItem> getWithUnitNumber(int unitNumber)
  {
    return _items.where((item) => item.unit == unitNumber).toList();
  }

}
