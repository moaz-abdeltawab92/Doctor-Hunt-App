import 'package:doctor_hunt/core/theming/colors/colors.dart';
import 'package:doctor_hunt/core/theming/style/app_text_styles.dart';
import 'package:flutter/material.dart';

class SubTitle extends StatelessWidget {
  final String text;
  final Color color;

  const SubTitle({
    super.key,
    required this.text,
    this.color = AppColors.description,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppTextStyles.subauth,
      textAlign: TextAlign.center,
    );
  }
}
