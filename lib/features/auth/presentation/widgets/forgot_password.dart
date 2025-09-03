import 'package:doctor_hunt/core/routing/route_export.dart';

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

