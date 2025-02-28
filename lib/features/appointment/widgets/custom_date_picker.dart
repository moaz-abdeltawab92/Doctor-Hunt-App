import 'package:date_picker_plus/date_picker_plus.dart';
import 'package:doctor_hunt/core/theming/colors/colors.dart';
import 'package:doctor_hunt/core/theming/style/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDatePicker extends StatelessWidget {
  final DateTime minDate;
  final DateTime maxDate;
  final DateTime initialDate;
  final Function(DateTime) onDateSelected;

  const CustomDatePicker({
    super.key,
    required this.minDate,
    required this.maxDate,
    required this.initialDate,
    required this.onDateSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 0.45.sh,  // يأخذ 45% من ارتفاع الشاشة بشكل مباشر
      height: MediaQuery.of(context).size.height * 0.45.h,
      decoration: BoxDecoration(
        color: AppColors.white1,
        borderRadius: BorderRadius.circular(10.r),
        boxShadow: [
          BoxShadow(
            color: AppColors.customDataPicker,
            blurRadius: 10.r,
            spreadRadius: 5.r,
            offset: Offset(0, 3.h),
          ),
        ],
      ),
      padding: EdgeInsets.all(16.h),
      child: DatePicker(
        minDate: minDate,
        maxDate: maxDate,
        initialDate: initialDate,
        onDateSelected: onDateSelected,
        daysOfTheWeekTextStyle: AppTextStyles.daysOfTheWeekTextStyle,
        enabledCellsTextStyle:
            AppTextStyles.enabledCellsTextStyle, //number of days
        selectedCellTextStyle: AppTextStyles.selectedCellTextStyle,
        // selectedDateDecoration: AppTextStyles.selectedDateDecoration.copyWith(
        //   color: Colors.grey,
        //   fontSize: 15.sp,
        // ),
        leadingDateTextStyle: AppTextStyles.leadingDateTextStyle,
      ),
    );
  }
}
