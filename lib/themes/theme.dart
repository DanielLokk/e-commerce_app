import 'package:flutter/material.dart';
import 'theme1.dart';

class MyAppTheme {
  const MyAppTheme();

  static ThemeData theme1 = ThemeData(
    backgroundColor: Theme1.bg,
    primaryColor: Theme1.bg,
    cardTheme: CardTheme(color: Theme1.bg),
    textTheme: TextTheme(bodyText1: TextStyle(color: Theme1.black)),
  );
}
