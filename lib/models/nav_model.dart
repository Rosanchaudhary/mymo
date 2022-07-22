import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Screens {
  const Screens(this.label, this.icon, this.color);
  final String label;
  final IconData icon;
  final MaterialColor color;
}

const List<Screens> allScreens = <Screens>[
  Screens('Home', Icons.home, Colors.pink),
  Screens('Loans', CupertinoIcons.arrow_up_arrow_down_square, Colors.orange),
  Screens('Liablities', CupertinoIcons.plus_app, Colors.yellow),
  Screens('Account', CupertinoIcons.person, Colors.yellow),
];
