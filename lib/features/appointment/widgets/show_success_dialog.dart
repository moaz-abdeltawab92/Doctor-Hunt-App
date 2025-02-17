import 'package:doctor_hunt/core/routing/onboarding_item_routes.dart';
import 'package:doctor_hunt/core/theming/colors/colors.dart';
import 'package:doctor_hunt/core/theming/style/font_weight_helper.dart';
import 'package:doctor_hunt/features/Home/presentation/widgets/app_text_buttton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void showSuccessDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.r),
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 150.w,
              height: 150.h,
              decoration: const BoxDecoration(
                color: Color(0xffE7F8F2),
                shape: BoxShape.circle,
              ),
              child: SizedBox(
                width: 90.w,
                height: 90.h,
                child: Icon(
                  Icons.thumb_up,
                  color: AppColors.buttonColor,
                  size: 65.sp,
                ),
              ),
            ),
            verticalSpace(12.h),
            Text(
              'Thank You!',
              style: AppTextStyles.accountStatus.copyWith(
                fontSize: 38.sp,
                color: Colors.black,
              ),
            ),
            verticalSpace(5.h),
            Text(
              'Your Appointment Successful',
              textAlign: TextAlign.center,
              style: AppTextStyles.accountStatus.copyWith(
                fontSize: 20.sp,
                color: AppColors.grey,
              ),
            ),
            verticalSpace(29.h),
            Text(
              'You booked an appointment with Dr. Pediatrician Purpleson on February 21, at 02:00 PM',
              textAlign: TextAlign.center,
              style: AppTextStyles.accountStatus.copyWith(
                fontSize: 14.sp,
                color: AppColors.grey,
              ),
            ),
            verticalSpace(29.h),
            AppTextButton(
              buttonText: 'Done',
              textStyle: AppTextStyles.accountStatus.copyWith(
                color: Colors.white,
                fontWeight: FontWeightHelper.bold,
                fontSize: 16.sp,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            verticalSpace(18.h),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Text(
                'Edit your appointment',
                style: AppTextStyles.accountStatus.copyWith(
                  fontSize: 14.sp,
                  color: AppColors.grey,
                ),
              ),
            ),
          ],
        ),
      );
    },
  );
}
