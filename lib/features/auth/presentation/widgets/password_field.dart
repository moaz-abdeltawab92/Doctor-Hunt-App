import 'package:doctor_hunt/core/theming/colors/colors.dart';
import 'package:doctor_hunt/core/widgets/Text_Form_fielddd.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PasswordField extends StatelessWidget {
  final bool isObscure;
  final VoidCallback toggleObscure;
  final String hintText;
  final TextEditingController controller;
  const PasswordField(
      {super.key,
      required this.isObscure,
      required this.toggleObscure,
      required this.hintText,
      required this.controller});

  @override
  Widget build(BuildContext context) {
    return AppTextFormField(
      controller: controller,
      hintText: hintText,
      isObscureText: isObscure,
      suffixIcon: IconButton(
        icon: Icon(
          isObscure ? Icons.visibility_off : Icons.visibility,
          color: AppColors.grey,
        ),
        onPressed: toggleObscure,
      ),
      fillColor: AppColors.white1,
      enabledBorderSideColor: AppColors.grey,
      radius: 16,
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 12.0,
      ),
      inputStyle: TextStyle(
        color: AppColors.primaryColor,
        fontSize: 16.0.sp,
      ),
      hintStyle: TextStyle(
        color: AppColors.black45,
        fontSize: 16.0.sp,
      ),
    );
  }
}
