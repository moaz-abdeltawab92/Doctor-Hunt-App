import 'package:doctor_hunt/core/constants/app_assets.dart';
import 'package:doctor_hunt/core/helpers/spacer.dart';
import 'package:doctor_hunt/core/theming/colors/colors.dart';
import 'package:doctor_hunt/core/theming/style/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TopSection extends StatelessWidget {
  const TopSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(40.r),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            AppColors.topSection,
            AppColors.endOfTopSection,
          ],
          stops: [0.0084, 0.9565],
        ),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(50.r),
          bottomRight: Radius.circular(50.r),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  verticalSpace(20.h),
                  Text('Hi Handwerker! ', style: AppTextStyles.welcomemessage),
                  verticalSpace(8.h),
                  Text('Find Your Doctor', style: AppTextStyles.tophomemessage),
                ],
              ),
              CircleAvatar(
                radius: 33.r,
                backgroundImage: const AssetImage(AppAssets.topsection),
              ),
            ],
          ),
          verticalSpace(20.h),
        ],
      ),
    );
  }
}
