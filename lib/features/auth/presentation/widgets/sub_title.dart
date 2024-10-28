import 'package:doctor_hunt/core/theming/colors/colors.dart';
import 'package:doctor_hunt/core/theming/style/app_styles.dart';
import 'package:flutter/material.dart';

class SubTitle extends StatelessWidget {
  final String text;
  final Color color;
  final double fontSize;

  const SubTitle({
    super.key,
    required this.text,
    this.color = AppColors.description,
    this.fontSize = 14,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppTextStyles.description,
      textAlign: TextAlign.center,
    );
  }
}
