import 'package:doctor_hunt/core/routing/profile_screen_routes.dart';
import 'package:doctor_hunt/core/theming/colors/colors.dart';

class TextRich extends StatelessWidget {
  const TextRich({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: '\$',
            style: TextStyle(
              color: AppColors.patientContainerText,
              fontWeight: FontWeight.bold,
              fontSize: 16.sp,
            ),
          ),
          TextSpan(
            text: '28.00/hr',
            style: TextStyle(
              color: AppColors.grey,
              fontSize: 16.sp,
            ),
          ),
        ],
      ),
    );
  }
}
