import 'package:doctor_hunt/core/constants/app_assets.dart';
import 'package:doctor_hunt/core/helpers/spacer.dart';
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
        child: Row(children: [
          const GradientBox(
            //! TODO: Use App Colors file instead

            gradientStart: Color(0xFF2753F3),
            gradientEnd: Color(0xFF765AFC),
            imagePath: AppAssets.teeth,
          ),
          horizontalSpace(15),
          const GradientBox(
            gradientStart: Color(0xFF0EBE7E),
            gradientEnd: Color(0xFF07D9AD),
            imagePath: AppAssets.heart,
          ),
          horizontalSpace(15),
          const GradientBox(
            gradientStart: Color(0xFFFE7F44),
            gradientEnd: Color(0xFFFFCF68),
            imagePath: AppAssets.eyes,
          ),
          horizontalSpace(15),
          const GradientBox(
            gradientStart: Color(0xFFFF484C),
            gradientEnd: Color(0xFFFF6C60),
            imagePath: AppAssets.stomach,
          ),
          horizontalSpace(15),
        ]),
      ),
    );
  }
}
