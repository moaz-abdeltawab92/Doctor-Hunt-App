import 'package:doctor_hunt/core/helpers/spacer.dart';
import 'package:doctor_hunt/core/theming/colors/colors.dart';
import 'package:doctor_hunt/core/theming/style/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StatsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildStatCard('100', 'Running'),
        _buildStatCard('500', 'Ongoing'),
        _buildStatCard('700', 'Patient'),
      ],
    );
  }

  Widget _buildStatCard(String value, String label) {
    return Container(
      width: 80.w,
      padding: EdgeInsets.symmetric(vertical: 16.h),
      decoration: BoxDecoration(
        color: AppColors.statsColor,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Column(
        children: [
          Text(
            value,
            style: AppTextStyles.statsText1,
          ),
          verticalSpace(4.h),
          Text(
            label,
            style: AppTextStyles.statsText2,
          ),
        ],
      ),
    );
  }
}
