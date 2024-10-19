import 'package:doctor_hunt/core/theming/colors/colors.dart';
import 'package:flutter/material.dart';

class SubTitle extends StatelessWidget {
  final String text;
  final Color color;
  final double fontSize;

  const SubTitle({
    super.key,
    required this.text,
    this.color = AppColors.subtext,
    this.fontSize = 15,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
      ),
      textAlign: TextAlign.center,
    );
  }
}
