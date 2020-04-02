import 'package:flutter/material.dart';

class DestinationItem
{
  final String title;
  final IconData icon;
  final MaterialColor color;

  const DestinationItem(this.title, this.icon, this.color);
}


class Destinations
{
  static const List<DestinationItem> allDestinations = <DestinationItem>[
  DestinationItem('Home', Icons.home, Colors.teal),
  DestinationItem('Business', Icons.business, Colors.cyan),
  DestinationItem('School', Icons.school, Colors.orange),
  DestinationItem('Flight', Icons.flight, Colors.blue)
  ];
}


