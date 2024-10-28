import 'package:doctor_hunt/core/theming/colors/colors.dart';
import 'package:flutter/material.dart';

class Shape extends StatelessWidget {
  const Shape({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 290,
      height: 370,
      decoration: const BoxDecoration(
        color: AppColors.buttonColor,
        shape: BoxShape.circle,
      ),
    );
  }
}
