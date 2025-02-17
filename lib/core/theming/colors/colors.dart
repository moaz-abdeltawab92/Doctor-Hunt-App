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
//Home Page
  static const Color gradientStartTeeth = Color(0xFF2753F3);
  static const Color gradientEndTeeth = Color(0xFF765AFC);

  static const Color gradientStartHeart = Color(0xFF0EBE7E);
  static const Color topSection = Color(0xFF0EBE7E);
  static const Color endOfTopSection = Color(0xFF07D9AD);

  static const Color gradientEndHeart = Color(0xFF07D9AD);

  static const Color gradientStartEyes = Color(0xFFFE7F44);
  static const Color gradientEndEyes = Color(0xFFFFCF68);

  static const Color gradientStartStomach = Color(0xFFFF484C);
  static const Color gradientEndStomach = Color(0xFFFF6C60);

  //Chat Live Screen
  static const Color heart = Colors.red;
  static const Color info = Colors.blue;
  static const Color like = Colors.blue;
  static const Color star = Colors.amber;

  //settings screen
  static const Color settingsTitle = Color.fromARGB(255, 83, 93, 123);
  static const Color settingsSubtitle = Color.fromARGB(255, 83, 93, 123);
  static Color dividerColor = Colors.grey[300]!;
  static const Color textMessages = Color(0xfff677294);
  static const Color lockIcon = Colors.red;
  static const Color notificationIcon = Colors.green;
  static const Color statistics = Colors.blue;
  static const Color infoIcon = Colors.orange;
  static const Color switchedColor = Colors.green;

  static Color borderProfileScreen = Colors.grey.shade300;
  static Color statsColor = Colors.grey.shade200;

  //APPOINTMENT
  static Color customCard = Colors.grey.withOpacity(0.2);
  static Color customDataPicker = Colors.grey.withOpacity(0.3);

  static const Color patientContainer = Color.fromARGB(255, 159, 207, 190);
  static const Color patientContainerText = Color(0xFF0EBE7F);
}
