import 'package:doctor_hunt/core/theming/colors/colors.dart';
import 'package:doctor_hunt/core/theming/style/font_weight_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {
  static TextStyle font24WhiteBold = GoogleFonts.sora(
    fontSize: 24.sp,
    fontWeight: FontWeightHelper.bold,
    color: AppColors.primaryColor,
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
    fontWeight: FontWeightHelper.medium,
  );

  static TextStyle accountStatus = TextStyle(
    fontSize: 14.sp,
    color: AppColors.buttonColor,
    fontWeight: FontWeightHelper.medium,
  );
  static TextStyle getstarted = TextStyle(
    fontSize: 18.sp,
    color: AppColors.white1,
  );
  static TextStyle skipbutton = TextStyle(
    fontSize: 16.sp,
    color: AppColors.skipbutton,
  );
  static TextStyle categorydoctors = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeightHelper.bold,
  );

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
    fontWeight: FontWeightHelper.bold,
  );
  static TextStyle findDoctor = TextStyle(
    color: AppColors.primaryColor,
    fontSize: 17.sp,
    fontWeight: FontWeightHelper.regular,
  );
  static TextStyle commentTitle = TextStyle(
    color: AppColors.white1,
    fontSize: 17.sp,
    fontWeight: FontWeightHelper.bold,
  );
  static TextStyle commentSubTitle = const TextStyle(
    color: AppColors.white1,
    fontWeight: FontWeightHelper.bold,
  );

  static TextStyle customAppBar = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeightHelper.bold,
    color: AppColors.primaryColor,
  );
  static TextStyle customAppBar2 = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeightHelper.bold,
    color: AppColors.white1,
  );

  static TextStyle daysOfTheWeekTextStyle = TextStyle(
    color: AppColors.primaryColor,
    fontWeight: FontWeightHelper.bold,
    fontSize: 15.sp,
  );
  static TextStyle enabledCellsTextStyle = TextStyle(
    color: AppColors.buttonColor,
    fontSize: 15.sp,
  );
  static TextStyle selectedCellTextStyle = TextStyle(
    color: AppColors.buttonColor,
    fontSize: 15.sp,
    fontWeight: FontWeightHelper.bold,
  );
  static TextStyle leadingDateTextStyle = TextStyle(
    color: AppColors.buttonColor,
    fontSize: 15.sp,
    fontWeight: FontWeightHelper.bold,
  );
  static TextStyle selectedDateDecoration = TextStyle(
    color: AppColors.buttonColor,
    fontSize: 15.sp,
    fontWeight: FontWeightHelper.bold,
  );

//profile screen
  static TextStyle profileTitle = TextStyle(
      fontSize: 18.sp, color: Colors.white, fontWeight: FontWeight.w400);

  static TextStyle profileSubTitle = TextStyle(
    color: Colors.white,
    fontSize: 13.sp,
    fontWeight: FontWeight.w400,
  );

  static TextStyle continueButton =
      TextStyle(fontSize: 16.sp, color: AppColors.white1);

  static TextStyle personalInformation = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeightHelper.bold,
  );
  static TextStyle label = TextStyle(
    fontSize: 14.sp,
    color: AppColors.buttonColor,
    fontWeight: FontWeightHelper.bold,
  );

//settings screen
  static TextStyle settingsTitle = TextStyle(
      fontSize: 18.sp,
      fontWeight: FontWeightHelper.bold,
      color: AppColors.settingsTitle);

  static TextStyle settingsSubTitle = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeightHelper.bold,
    color: AppColors.settingsSubtitle,
  );
  static TextStyle textMessage = TextStyle(
    fontSize: 16.sp,
    color: AppColors.textMessages,
    fontWeight: FontWeight.w500,
  );
  static TextStyle textMessage2 = TextStyle(
    fontSize: 12.sp,
    color: AppColors.textMessages,
    fontWeight: FontWeight.w500,
  );

  //select Time Screen
  static TextStyle selectDay = TextStyle(
    fontWeight: FontWeightHelper.bold,
    fontSize: 18.0.sp,
  );
  static TextStyle selectTime = TextStyle(
    fontWeight: FontWeightHelper.bold,
    fontSize: 16.0.sp,
  );

  static TextStyle bookNowButton = TextStyle(
    fontSize: 15.sp,
    color: AppColors.white1,
    fontWeight: FontWeightHelper.bold,
  );
  static TextStyle topCardDoctor = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeightHelper.bold,
  );
  static TextStyle topCardDoctor2 = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.bold,
  );

  static TextStyle servicesText = TextStyle(
    fontWeight: FontWeightHelper.bold,
    fontSize: 20.sp,
    color: AppColors.notificationIcon,
  );
  static TextStyle servicesText2 = const TextStyle(
    fontWeight: FontWeightHelper.bold,
    color: AppColors.notificationIcon,
  );
  static TextStyle servicesText3 = TextStyle(
    fontWeight: FontWeightHelper.bold,
    fontSize: 13.sp,
    color: AppColors.notificationIcon,
  );
  static TextStyle slotsSectionText = TextStyle(
    fontWeight: FontWeightHelper.bold,
    fontSize: 18.0.sp,
    color: Colors.black87,
  );
  static TextStyle statsText1 = TextStyle(
    fontSize: 22.sp,
    fontWeight: FontWeightHelper.bold,
    color: Colors.black,
  );
  static TextStyle statsText2 = TextStyle(
    fontSize: 14.sp,
    color: Colors.grey.shade600,
  );
  //Appointment Screen
  static TextStyle appointmentTitle = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeightHelper.bold,
  );
  static TextStyle availableTime = TextStyle(
    color: AppColors.primaryColor,
    fontSize: 16.sp,
  );
  static TextStyle reminderMe = TextStyle(
    color: AppColors.primaryColor,
    fontSize: 16.sp,
  );
  static TextStyle customButton = TextStyle(
    color: AppColors.white1,
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.bold,
  );
  static TextStyle customImageColumn = TextStyle(
    fontWeight: FontWeightHelper.regular,
    fontSize: 14.sp,
    color: AppColors.grey,
  );
  static TextStyle addPatientButton = TextStyle(
    fontWeight: FontWeightHelper.regular,
    fontSize: 14.sp,
    color: AppColors.patientContainerText,
  );
}
