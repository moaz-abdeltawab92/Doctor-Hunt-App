import 'package:doctor_hunt/core/routing/route_export.dart';

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
        padding: EdgeInsets.only(top: 80),
        child: SingleChildScrollView(
          child: SignupBody(),
        ),
      ),
    );
  }
}
