import 'package:doctor_hunt/core/theming/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ActiveAppointmentItems extends StatelessWidget {
  const ActiveAppointmentItems({
    super.key,
    required this.time,
  });

  final String time;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8.w),
      height: 70.h,
      width: 70.w,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: AppColors.buttonColor,
      ),
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.all(8.0.h),
        child: Text(
          time,
          style: const TextStyle(color: AppColors.white1),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

class InActiveAppointmentClockItem extends StatelessWidget {
  const InActiveAppointmentClockItem({
    super.key,
    required this.time,
  });

  final String time;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.h,
      width: 70.w,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: AppColors.primaryColor.withOpacity(.15),
      ),
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.all(8.0.h),
        child: Text(
          time,
          style: const TextStyle(color: AppColors.primaryColor),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
