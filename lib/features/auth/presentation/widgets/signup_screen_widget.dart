import 'package:doctor_hunt/core/theming/colors/colors.dart';
import 'package:doctor_hunt/features/auth/presentation/widgets/signup_body.dart';
import 'package:flutter/material.dart';

class SignupScreenWidget extends StatelessWidget {
  const SignupScreenWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.maxFinite,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            AppColors.topbackgroundcolor,
            AppColors.white1,
            AppColors.bottombackgroundcolor,
          ],
          stops: [0.0, 0.5, 1.0],
        ),
      ),
      child: const Padding(
        padding: EdgeInsets.only(top: 135),
        child: SingleChildScrollView(
          child: SignupBody(),
        ),
      ),
    );
  }
}
