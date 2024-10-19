import 'package:flutter/material.dart';

class AppColors {
  AppColors._();
  static final AppColors _instance = AppColors._();
  factory AppColors() => _instance;
  static const Color primaryColor = Color(0xFF070431);

  static const Color red = Color(0xFF070431);
  static const Color white = Color.fromARGB(255, 174, 170, 224);
  static const Color subtext = Color.fromARGB(255, 129, 128, 128);
}
