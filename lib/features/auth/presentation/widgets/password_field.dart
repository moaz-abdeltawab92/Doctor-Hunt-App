import 'package:doctor_hunt/core/theming/colors/colors.dart';
import 'package:doctor_hunt/core/widgets/Text_Form_fielddd.dart';
import 'package:flutter/material.dart';

class PasswordField extends StatelessWidget {
  final bool isObscure;
  final VoidCallback toggleObscure;
  final String hintText;

  const PasswordField({
    super.key,
    required this.isObscure,
    required this.toggleObscure,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return AppTextFormField(
      hintText: hintText,
      isObscureText: isObscure,
      suffixIcon: IconButton(
        icon: Icon(
          isObscure ? Icons.visibility_off : Icons.visibility,
          color: Colors.grey,
        ),
        onPressed: toggleObscure,
      ),
      fillColor: Colors.white,
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
