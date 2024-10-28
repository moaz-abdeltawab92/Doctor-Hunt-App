import 'package:flutter/material.dart';

class AppColors {
  AppColors._();
  static final AppColors _instance = AppColors._();
  factory AppColors() => _instance;
  static const Color primaryColor = Colors.black;

  static const Color white1 = Colors.white;

  static const Color grey = Colors.grey;

  static const Color dolar = Colors.green;

  static Color bottomnavigation =
      Color.fromARGB(255, 17, 170, 78).withOpacity(0.8);

  static const Color topbackgroundcolor = Color(0xFFCCE6FF);
  static const Color bottombackgroundcolor = Color(0xFFE8F5E9);
  static const Color skipbutton = Color.fromARGB(255, 121, 121, 121);

  static const Color socialColorText = Color(0xff677294);
  static const Color buttonColor = Color(0xFF0EBE7F);
  static const Color white = Color.fromARGB(255, 174, 170, 224);
  static const Color headText = Colors.black;
  static const Color description = Colors.grey;
  static const Color subtext = Color.fromARGB(255, 129, 128, 128);
}
