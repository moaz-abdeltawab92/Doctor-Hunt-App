import 'package:doctor_hunt/core/theming/colors/colors.dart';
import 'package:doctor_hunt/core/widgets/Text_Form_fielddd.dart';
import 'package:flutter/material.dart';

class EmailField extends StatelessWidget {
  final String hintText;
  final Icon? suffixIcon;

  const EmailField({
    super.key,
    required this.hintText,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return AppTextFormField(
      hintText: hintText,
      suffixIcon: suffixIcon,
      fillColor: AppColors.white1,
      enabledBorderSideColor: Colors.grey,
      radius: 16,
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 12.0,
      ),
      inputStyle: const TextStyle(
        color: AppColors.primaryColor,
        fontSize: 16.0,
      ),
      hintStyle: const TextStyle(
        color: Colors.black54,
        fontSize: 16.0,
      ),
    );
  }
}
//