import 'package:doctor_hunt/core/routing/homepage_routes.dart';
import 'package:doctor_hunt/core/theming/colors/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WhoIsPatientText extends StatelessWidget {
  const WhoIsPatientText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        right: 150.w,
      ),
      child: Text(
        'Who is the patient?',
        style: TextStyle(
          fontSize: 18.sp,
          fontWeight: FontWeight.bold,
          color: AppColors.primaryColor,
        ),
      ),
    );
  }
}
