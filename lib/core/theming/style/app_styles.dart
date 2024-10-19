import 'package:doctor_hunt/core/theming/style/font_weight_helper.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {
  static TextStyle font24WhiteBold = GoogleFonts.sora(
    fontSize: 24,
    fontWeight: FontWeightHelper.bold,
    color: Colors.black,
  );
  static const TextStyle title = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.bold,
  );
  static TextStyle description = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.bold,
    color: Colors.grey,
  );
  static TextStyle accountStatus = TextStyle(
    fontSize: 14,
    //fontWeight: FontWeight.bold,
    color: Color(0xFF0EBE7F),
  );
}
