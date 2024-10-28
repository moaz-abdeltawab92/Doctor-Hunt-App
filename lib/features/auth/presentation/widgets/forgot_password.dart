import 'package:doctor_hunt/core/theming/colors/colors.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Forgot Password?",
      style: TextStyle(color: AppColors.buttonColor),
    );
  }
}
