import 'package:flutter/material.dart';

class Themes {
  static final Light = ThemeData(
      backgroundColor: Colors.white,
      primaryColor: Color.fromARGB(255, 247, 246, 246), //???????
      brightness: Brightness.light);

  static final Dark = ThemeData(
      backgroundColor: Colors.black,
      primaryColor: Color(0xFF424242),
      brightness: Brightness.dark);
}
