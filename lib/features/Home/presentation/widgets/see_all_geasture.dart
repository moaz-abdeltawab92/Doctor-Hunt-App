import 'package:doctor_hunt/core/theming/colors/colors.dart';
import 'package:doctor_hunt/core/theming/style/app_text_styles.dart';
import 'package:flutter/material.dart';

class SeeAll extends StatelessWidget {
  const SeeAll({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            'See all',
            style: AppTextStyles.seeAll,
          ),
          Icon(
            Icons.chevron_right,
            color: AppColors.grey2,
          ),
        ],
      ),
    );
  }
}
