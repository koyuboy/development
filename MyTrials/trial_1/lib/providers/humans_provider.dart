import 'package:flutter/material.dart';

import '../models/human.dart';


class HumansProvider with ChangeNotifier{
  List<Human> _humans = [
    Human(
      id: 't1',
      name: 'test',
      surname: 'test',
      age: 20,
    )
  ];

  List<Human> get items{
    //We ensure that it'll no be pointer of the real object.
    //It's copy of the humans list.
    return [..._humans];           
  }

  void addHuman(Human human)
  {
    _humans.add(human);
    notifyListeners();
  }
}