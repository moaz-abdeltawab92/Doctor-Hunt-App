import 'package:doctor_hunt/core/constants/app_assets.dart';
import 'package:doctor_hunt/core/helpers/spacer.dart';
import 'package:doctor_hunt/core/theming/colors/colors.dart';
import 'package:doctor_hunt/features/Home/presentation/widgets/gradient_box.dart';
import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  const Categories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            children: [
              const GradientBox(
                gradientStart: AppColors.gradientStartTeeth,
                gradientEnd: AppColors.gradientEndTeeth,
                imagePath: AppAssets.teeth,
              ),
              horizontalSpace(15),
              const GradientBox(
                gradientStart: AppColors.gradientStartHeart,
                gradientEnd: AppColors.gradientEndHeart,
                imagePath: AppAssets.heart,
              ),
              horizontalSpace(15),
              const GradientBox(
                gradientStart: AppColors.gradientStartEyes,
                gradientEnd: AppColors.gradientEndEyes,
                imagePath: AppAssets.eyes,
              ),
              horizontalSpace(15),
              const GradientBox(
                gradientStart: AppColors.gradientStartStomach,
                gradientEnd: AppColors.gradientEndStomach,
                imagePath: AppAssets.stomach,
              ),
              horizontalSpace(15),
            ],
          )),
    );
  }
}
