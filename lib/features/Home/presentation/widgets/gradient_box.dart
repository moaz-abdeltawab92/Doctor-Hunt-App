import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GradientBox extends StatelessWidget {
  final Color gradientStart;
  final Color gradientEnd;
  final String imagePath;

  const GradientBox({
    super.key,
    required this.gradientStart,
    required this.gradientEnd,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 85.w,
      height: 95.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            gradientStart,
            gradientEnd,
          ],
          stops: const [0.0649, 0.9683],
          transform: const GradientRotation(143.86 * 3.14159 / 180),
        ),
      ),
      child: Transform.scale(
        scale: 0.5.w,
        child: Image.asset(imagePath),
      ),
    );
  }
}
