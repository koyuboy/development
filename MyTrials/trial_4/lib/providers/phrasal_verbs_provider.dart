import 'package:flutter/material.dart';

class PhrasalVerbItem {
  int unit;
  String phrasalVerb;
  String definition;
  List<String> examples;
  String imageUrl;

  PhrasalVerbItem({
    @required this.unit,
    @required this.phrasalVerb,
    @required this.definition,
    @required this.examples,
    @required this.imageUrl,
  });
}

class PhrasalVerbsProvider with ChangeNotifier {
  final _items = [
    PhrasalVerbItem(
      unit: 1,
      phrasalVerb: "Find out",
      definition:
          '​to get some information about something/somebody by asking, reading, etc.',
      examples: ["He found out which platform the train left from"],
      imageUrl: 'assets/images/find_out.png',
    ),
    PhrasalVerbItem(
      unit: 1,
      phrasalVerb: "Look for",
      definition:
          '​to try to find (something or someone), often a thing or person that is lost.',
      examples: ["He found out which platform the train left from"],
      imageUrl: 'assets/images/look_for.gif',
    ),
    PhrasalVerbItem(
      unit: 1,
      phrasalVerb: "Look up",
      definition:
          'to find (or try to find) something (e.g. a telephone number) in a book (e.g. a telephone directory).',
      examples: ["He found out which platform the train left from"],
      imageUrl: 'assets/images/look_up.jpg',
    ),
    PhrasalVerbItem(
      unit: 1,
      phrasalVerb: "Look over",
      definition: 'to examine (someone or something) carefully and fully.',
      examples: ["He found out which platform the train left from"],
      imageUrl: 'assets/images/look_over.jpg',
    ),
    PhrasalVerbItem(
      unit: 1,
      phrasalVerb: "Look round",
      definition: 'to visit and tour round a place.',
      examples: ["He found out which platform the train left from"],
      imageUrl: 'assets/images/look_round.jpg',
    ),
    PhrasalVerbItem(
      unit: 1,
      phrasalVerb: "Look into",
      definition:
          'to investigate; to carefully examine a situation or event and try to discover the reasons for it.',
      examples: ["He found out which platform the train left from"],
      imageUrl: 'assets/images/look_into.png',
    ),
    //////////////////////////////////////////////////////////
    PhrasalVerbItem(
      unit: 2,
      phrasalVerb: "Take after",
      definition: 'to look or be like an older relative.',
      examples: [
        "Little Christopher takes after his father. He has black hair, big feet and a bad temper just like his dad.",
        "Christopher takes after his father.",
        "Christopher takes after him."
      ],
      imageUrl: 'assets/images/take_after.jpg',
    ),
    PhrasalVerbItem(
      unit: 2,
      phrasalVerb: "Grow up",
      definition: 'to develop from a child into an adult.',
      examples: [
        "Joe has grown up into a fine young man.",
        "Joe has grown up.",
      ],
      imageUrl: 'assets/images/grow_up.jpg',
    ),
    PhrasalVerbItem(
      unit: 2,
      phrasalVerb: "Look after",
      definition: 'to take care of someone or something.',
      examples: [
        "Looking after a baby is a full-time job. You have to bath it, dress it and feed it.",
        "She looks after the baby.",
        "She looks after it."
      ],
      imageUrl: '',
    ),
    PhrasalVerbItem(
      unit: 2,
      phrasalVerb: "Bring up",
      definition: 'to take care of a child until it is fully grown and able to care for itself; to train and prepare a child for adult life.',
      examples: [
        "Joe's mother brought him up well. She loved him, cared for him and taught him how to behave himself. Now he is a polite young man and his mother is proud of him.",
        "She brought up Joe.",
        "She brought Joe up.",
        "She brought him up."
      ],
      imageUrl: '',
    ),
    PhrasalVerbItem(
      unit: 2,
      phrasalVerb: "Do up",
      definition: 'to repair; to improve the condition and appearance of something.',
      examples: [
        "When Bob and Sally bought their house it was in a bad state, so they spent six months doing It up. The house looked beautiful by the time they finished.",
        "They did the house up.",
        "They did up the house.",
        "They did it up."
      ],
      imageUrl: '',
    ),
    PhrasalVerbItem(
      unit: 2,
      phrasalVerb: "Look back",
      definition: 'to remember and think about the past.',
      examples: [
        "The Blacks have been married for many years. They like talking about the past and looking back on old times. At the moment they are looking at pictures of their wedding.",
        "They enjoy looking back (on / at / to) old times.",
        "They enjoy looking back on them.",
        "They enjoy looking back."
      ],
      imageUrl: 'assets/images/look_back.jpg',
    ),
  ];

  int get getLength {
    return _items.length;
  }

  List<PhrasalVerbItem> get getItems {
    return [..._items];
  }

  List<PhrasalVerbItem> getWithUnitNumber(int unitNumber) {
    return _items.where((item) => item.unit == unitNumber).toList();
  }
}
