import 'package:doctor_hunt/core/theming/colors/colors.dart';
import 'package:doctor_hunt/core/theming/style/font_weight_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {
  static TextStyle font24WhiteBold = GoogleFonts.sora(
    fontSize: 24.sp,
    fontWeight: FontWeightHelper.bold,
    color: Colors.black,
  );

  static TextStyle title = TextStyle(
    fontSize: 28.sp,
    fontWeight: FontWeightHelper.bold,
    color: AppColors.headText,
  );
  static TextStyle description = TextStyle(
    fontSize: 14.sp,
    overflow: TextOverflow.visible,
    fontWeight: FontWeightHelper.medium,
    color: AppColors.description,
  );
  static TextStyle subauth = TextStyle(
    fontSize: 15.sp,
    overflow: TextOverflow.visible,
    fontWeight: FontWeightHelper.medium,
    color: AppColors.description,
  );

  static TextStyle forgotpassword = TextStyle(
      color: AppColors.buttonColor,
      fontSize: 14.sp,
      fontWeight: FontWeightHelper.medium);

  static TextStyle accountStatus = TextStyle(
      fontSize: 14.sp,
      color: AppColors.buttonColor,
      fontWeight: FontWeightHelper.medium);
  static TextStyle getstarted = TextStyle(
    fontSize: 18.sp,
    color: AppColors.white1,
  );
  static TextStyle skipbutton = TextStyle(
    fontSize: 16.sp,
    color: AppColors.skipbutton,
  );
  static TextStyle categorydoctors =
      TextStyle(fontSize: 20.sp, fontWeight: FontWeightHelper.bold);

  static TextStyle popularDoctortitle = TextStyle(
    fontSize: 20.sp,
    color: AppColors.primaryColor,
    fontWeight: FontWeightHelper.bold,
  );
  static TextStyle popularDoctorsubtitle = TextStyle(
    fontSize: 12.sp,
    color: AppColors.skipbutton,
  );
  static TextStyle dolar = TextStyle(
    color: AppColors.dolar,
    fontWeight: FontWeightHelper.bold,
    fontSize: 12.sp,
  );
  static TextStyle featuredoctors = TextStyle(
    fontSize: 17.sp,
    color: AppColors.primaryColor,
    fontWeight: FontWeightHelper.bold,
  );
  static TextStyle seeAll = TextStyle(
    fontWeight: FontWeight.w400,
    color: AppColors.grey2,
    fontSize: 15.sp,
  );

  static TextStyle welcomemessage = TextStyle(
    color: AppColors.white1,
    fontSize: 17.sp,
  );
  static TextStyle tophomemessage = TextStyle(
    color: AppColors.white1,
    fontSize: 26.sp,
    fontWeight: FontWeight.bold,
  );
}
