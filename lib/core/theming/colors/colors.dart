import 'package:flutter/material.dart';

class AppColors {
  AppColors._();
  static final AppColors _instance = AppColors._();
  factory AppColors() => _instance;
  static const Color primaryColor = Colors.black;
  static const Color black45 = Colors.black54;

  static const Color white1 = Colors.white;

  static final Color checkbox = Colors.blue[800]!;

  static const Color grey = Colors.grey;

  static final Color grey2 = Colors.grey[600]!;

  static const Color dolar = Colors.green;
  static final Color backgroundColor = Colors.grey[200]!;

  static Color bottomnavigation =
      const Color.fromARGB(255, 17, 170, 78).withOpacity(0.8);

  static const Color topbackgroundcolor = Color(0xFFCCE6FF);
  static const Color bottombackgroundcolor = Color(0xFFE8F5E9);
  static const Color skipbutton = Color.fromARGB(255, 121, 121, 121);

  static const Color socialColorText = Color(0xff677294);
  static const Color buttonColor = Color(0xFF0EBE7F);
  static const Color white = Color.fromARGB(255, 174, 170, 224);
  static const Color headText = Colors.black;
  static const Color description = Colors.grey;
  static const Color subtext = Color.fromARGB(255, 129, 128, 128);

  static const Color gradientStartTeeth = Color(0xFF2753F3);
  static const Color gradientEndTeeth = Color(0xFF765AFC);

  static const Color gradientStartHeart = Color(0xFF0EBE7E);
  static const Color gradientEndHeart = Color(0xFF07D9AD);

  static const Color gradientStartEyes = Color(0xFFFE7F44);
  static const Color gradientEndEyes = Color(0xFFFFCF68);

  static const Color gradientStartStomach = Color(0xFFFF484C);
  static const Color gradientEndStomach = Color(0xFFFF6C60);
}
