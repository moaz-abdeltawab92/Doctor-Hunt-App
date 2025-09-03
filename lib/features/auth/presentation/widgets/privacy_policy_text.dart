import 'package:doctor_hunt/core/routing/route_export.dart';

class PrivacyPolicyText extends StatelessWidget {
  const PrivacyPolicyText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: 'I agree with the ',
        style: TextStyle(
          fontSize: 12.sp,
        ),
        children: [
          TextSpan(
            text: 'Terms of Service',
            style: TextStyle(
              fontSize: 12.sp,
              color: AppColors.primaryColor,
            ),
          ),
          const TextSpan(text: ' & '),
          TextSpan(
            text: 'Privacy Policy',
            style: TextStyle(
              fontSize: 12.sp,
              color: AppColors.primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}

