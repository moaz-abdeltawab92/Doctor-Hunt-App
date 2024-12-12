import 'package:doctor_hunt/core/theming/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Shape extends StatelessWidget {
  const Shape({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 290.w,
      height: 370.h,
      decoration: const BoxDecoration(
        color: AppColors.buttonColor,
        shape: BoxShape.circle,
      ),
    );
  }
}
