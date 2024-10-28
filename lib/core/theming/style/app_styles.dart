import 'package:doctor_hunt/core/theming/colors/colors.dart';
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
    fontWeight: FontWeightHelper.bold,
    color: AppColors.headText,
  );
  static TextStyle description = const TextStyle(
    fontSize: 14,
    overflow: TextOverflow.visible,
    fontWeight: FontWeightHelper.medium,
    color: AppColors.description,
  );
  static TextStyle accountStatus = const TextStyle(
    fontSize: 14,
    color: AppColors.buttonColor,
  );
  static TextStyle getstarted = const TextStyle(
    fontSize: 18,
    color: AppColors.white1,
  );
  static TextStyle skipbutton = const TextStyle(
    fontSize: 16,
    color: AppColors.skipbutton,
  );
  static TextStyle categorydoctors =
      const TextStyle(fontSize: 20, fontWeight: FontWeightHelper.bold);

  static TextStyle popularDoctortitle = const TextStyle(
    fontSize: 20,
    color: AppColors.primaryColor,
    fontWeight: FontWeightHelper.bold,
  );
  static TextStyle popularDoctorsubtitle = const TextStyle(
    fontSize: 12,
    color: AppColors.skipbutton,
  );
  static TextStyle dolar = const TextStyle(
    color: AppColors.dolar,
    fontWeight: FontWeightHelper.bold,
    fontSize: 12,
  );
  static TextStyle featuredoctors = const TextStyle(
    fontSize: 17,
    color: AppColors.primaryColor,
    fontWeight: FontWeightHelper.bold,
  );
  static TextStyle seeAll = TextStyle(
    fontWeight: FontWeight.w400,
    color: Colors.grey[600],
    fontSize: 15,
  );
}
