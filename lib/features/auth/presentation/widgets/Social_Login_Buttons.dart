import 'package:doctor_hunt/core/routing/route_export.dart';

// ignore_for_file: file_names

class SocialLoginButtons extends StatelessWidget {
  const SocialLoginButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 40),
          decoration: BoxDecoration(
            color: AppColors.white1,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              SvgPicture.asset(
                "assets/Group.svg",
                height: 24.h,
                width: 24.w,
              ),
              horizontalSpace(10),
              const Text(
                "Google",
                style: TextStyle(
                  color: AppColors.socialColorText,
                ),
              ),
            ],
          ),
        ),
        horizontalSpace(10),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 40),
          decoration: BoxDecoration(
            color: AppColors.white1,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              SvgPicture.asset(
                "assets/Group 2.svg",
                height: 24.h,
                width: 24.w,
              ),
              horizontalSpace(10),
              const Text(
                "Facebook",
                style: TextStyle(
                  color: AppColors.socialColorText,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

