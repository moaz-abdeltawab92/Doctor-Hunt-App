import 'package:doctor_hunt/core/helpers/spacer.dart';
import 'package:doctor_hunt/core/theming/colors/colors.dart';
import 'package:doctor_hunt/core/theming/style/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AccountSettings extends StatelessWidget {
  const AccountSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Text(
          'Account Settings',
          style: AppTextStyles.settingsTitle,
        ),
        verticalSpace(10.h),
        buildCustomTile(
          icon: Icons.lock,
          iconColor: AppColors.lockIcon,
          text: 'Change Password',
        ),
        Divider(
          thickness: 1,
          color: AppColors.dividerColor,
        ),
        buildCustomTile(
          icon: Icons.notifications,
          iconColor: AppColors.notificationIcon,
          text: 'Notifications',
        ),
        Divider(
          thickness: 1,
          color: AppColors.dividerColor,
        ),
        buildCustomTile(
          icon: Icons.pie_chart,
          iconColor: AppColors.statistics,
          text: 'Statistics',
        ),
        Divider(
          thickness: 1,
          color: AppColors.dividerColor,
        ),
        buildCustomTile(
          icon: Icons.info,
          iconColor: AppColors.infoIcon,
          text: 'About us',
        ),
        Divider(
          thickness: 1,
          color: AppColors.dividerColor,
        ),
      ],
    );
  }

  Widget buildCustomTile({
    required IconData icon,
    required Color iconColor,
    required String text,
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 8.0.h),
      child: Row(
        children: [
          CircleAvatar(
            radius: 20.r,
            backgroundColor: iconColor.withOpacity(0.2),
            child: Icon(
              icon,
              color: iconColor,
              size: 24.sp,
            ),
          ),
          horizontalSpace(20.w),
          Expanded(
            child: Text(
              text,
              style: AppTextStyles.textMessage,
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Icon(
              Icons.arrow_forward_ios,
              size: 16.sp,
              color: AppColors.textMessages,
            ),
          ),
        ],
      ),
    );
  }
}
