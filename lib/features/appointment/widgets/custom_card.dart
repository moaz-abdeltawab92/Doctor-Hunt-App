import 'package:doctor_hunt/core/helpers/spacer.dart';
import 'package:doctor_hunt/core/theming/colors/colors.dart';
import 'package:doctor_hunt/core/theming/style/app_text_styles.dart';
import 'package:doctor_hunt/features/Home/presentation/widgets/custom_heart.dart';
import 'package:doctor_hunt/features/Home/presentation/widgets/select_time_custom_starts_rating.dart';
import 'package:doctor_hunt/features/appointment/widgets/text_rich.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key});
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: AppColors.customCard,
              blurRadius: 6.r,
              offset: const Offset(0, 3),
            ),
          ],
          color: AppColors.white1,
          borderRadius: BorderRadius.circular(8.0.r),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0.w, vertical: 10.0.h),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/card1.png',
                height: 87.0.h,
                width: 92.0.w,
              ),
              horizontalSpace(8.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Dr. Pediatrician',
                      style: AppTextStyles.topCardDoctor2,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                    verticalSpace(5.h),
                    const Text(
                      'Specialist Cardiologist ',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                    verticalSpace(17.h),
                    Row(
                      children: [
                        const SelectTimeCustomStarsRating(),
                        horizontalSpace(27.w),
                        const TextRich(),
                      ],
                    ),
                    verticalSpace(15.h),
                  ],
                ),
              ),
              const CustomHeart(),
            ],
          ),
        ),
      ),
    ]);
  }
}
