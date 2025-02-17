import 'package:doctor_hunt/core/theming/style/app_text_styles.dart';
import 'package:flutter/material.dart';

class HeadText extends StatelessWidget {
  final String headText;

  const HeadText({
    super.key,
    required this.headText,
  });
  @override
  @override
  Widget build(BuildContext context) {
    return Text(
      headText,
      textAlign: TextAlign.center,
      style: AppTextStyles.title,
    );
  }
}
