import 'package:doctor_hunt/core/theming/colors/colors.dart';
import 'package:doctor_hunt/features/auth/presentation/widgets/login_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreenWidget extends StatelessWidget {
  const LoginScreenWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity.w,
      height: double.maxFinite.h,
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
          child: LoginBody(),
        ),
      ),
    );
  }
}
