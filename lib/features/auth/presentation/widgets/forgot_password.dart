import 'package:doctor_hunt/core/constants/app_string.dart';
import 'package:doctor_hunt/core/theming/style/app_styles.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      AppString.fogotpassword,
      style: AppTextStyles.forgotpassword,
    );
  }
}
