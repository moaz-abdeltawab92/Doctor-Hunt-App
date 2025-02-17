import 'package:doctor_hunt/core/constants/app_assets.dart';
import 'package:doctor_hunt/core/helpers/spacer.dart';
import 'package:doctor_hunt/core/theming/style/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppbar2 extends StatelessWidget {
  const CustomAppbar2({
    super.key,
    required this.appBarTitle,
  });

  final String appBarTitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.0.h),
      child: Row(
        children: [
          GestureDetector(
            child: SvgPicture.asset(AppAssets.backButton),
            onTap: () => Navigator.pop(context),
          ),
          horizontalSpace(20.w),
          Expanded(
            child: Text(
              appBarTitle,
              style: AppTextStyles.customAppBar2,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          ),
        ],
      ),
    );
  }
}
