import 'package:doctor_hunt/core/helpers/spacer.dart';
import 'package:doctor_hunt/core/theming/colors/colors.dart';
import 'package:doctor_hunt/core/theming/style/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MoreOptions extends StatefulWidget {
  const MoreOptions({super.key});

  @override
  State<MoreOptions> createState() => _MoreOptions();
}

class _MoreOptions extends State<MoreOptions> {
  bool isTextMessagesSwitched = false;
  bool isPhoneCallsSwitched = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Text(
          'More Options',
          style: AppTextStyles.settingsSubTitle,
        ),
        verticalSpace(10),
        buildCustomSwitch(
          text: 'Text messages',
          isSwitched: isTextMessagesSwitched,
          onChanged: (value) {
            setState(() {
              isTextMessagesSwitched = value;
            });
          },
        ),
        Divider(
          thickness: 1,
          color: AppColors.dividerColor,
        ),
        buildCustomSwitch(
          text: 'Phone calls',
          isSwitched: isPhoneCallsSwitched,
          onChanged: (value) {
            setState(() {
              isPhoneCallsSwitched = value;
            });
          },
        ),
        Divider(
          thickness: 1,
          color: AppColors.dividerColor,
        ),
        buildCustomTile(
          text2: 'Languages',
          text3: 'English',
        ),
        Divider(
          thickness: 1,
          color: AppColors.dividerColor,
        ),
        buildCustomTile(
          text2: 'Currency',
          text3: '-USD',
        ),
        Divider(
          thickness: 1,
          color: AppColors.dividerColor,
        ),
        buildCustomTile(
          text2: 'Linked accounts',
          text3: 'Facebook, Google',
        ),
        Divider(
          thickness: 1,
          color: AppColors.dividerColor,
        ),
      ],
    );
  }

  Widget buildCustomSwitch({
    required String text,
    required bool isSwitched,
    required Function(bool) onChanged,
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0.w, vertical: 0.0.h),
      child: Row(
        children: [
          Expanded(
            child: Text(
              text,
              style: AppTextStyles.textMessage,
            ),
          ),
          Transform.scale(
            scale: 0.8.r,
            child: Switch(
              value: isSwitched,
              onChanged: onChanged,
              activeColor: AppColors.switchedColor,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildCustomTile({
    required String text3,
    required String text2,
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0.w, vertical: 8.0.h),
      child: Row(
        children: [
          Expanded(
            child: Text(
              text2,
              style: AppTextStyles.textMessage,
            ),
          ),
          Text(
            text3,
            style: AppTextStyles.textMessage2,
          ),
          horizontalSpace(5.w),
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
