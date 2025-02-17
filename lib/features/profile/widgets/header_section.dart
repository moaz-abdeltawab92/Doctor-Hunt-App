import 'package:doctor_hunt/core/constants/app_assets.dart';
import 'package:doctor_hunt/core/helpers/spacer.dart';
import 'package:doctor_hunt/core/theming/colors/colors.dart';
import 'package:doctor_hunt/core/theming/style/app_text_styles.dart';
import 'package:doctor_hunt/features/profile/widgets/customAppBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.buttonColor,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(40.r),
            bottomRight: Radius.circular(40.r),
          )),
      padding: EdgeInsets.symmetric(vertical: 20.h),
      child: Column(
        children: [
          verticalSpace(30.h),
          const CustomAppbar2(appBarTitle: 'Profile'),
          verticalSpace(25.h),
          Text(
            'Set up your profile',
            style: AppTextStyles.profileTitle,
          ),
          verticalSpace(10.h),
          Text(
            'Update your profile to connect your doctor with better impression.',
            textAlign: TextAlign.center,
            style: AppTextStyles.profileSubTitle,
          ),
          verticalSpace(20.h),
          Stack(
            children: [
              CircleAvatar(
                radius: 50.r,
                backgroundImage: const AssetImage(AppAssets.comment1),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: CircleAvatar(
                  radius: 16.r,
                  backgroundColor: AppColors.white1,
                  child: Icon(Icons.camera_alt,
                      size: 18.sp, color: AppColors.grey),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
