import 'package:doctor_hunt/core/routing/profile_screen_routes.dart';
import 'package:doctor_hunt/core/theming/colors/colors.dart';

class BottomButtons extends StatelessWidget {
  const BottomButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.dolar,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.r),
            ),
          ),
          child: const Text(
            'Next availability on wed, 24 Feb',
            style: TextStyle(color: AppColors.white1),
          ),
        ),
        verticalSpace(20.h),
        const Text('OR'),
        verticalSpace(20.h),
        OutlinedButton(
          onPressed: () {},
          style: OutlinedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.r),
            ),
          ),
          child: TextButton(
            onPressed: () {},
            child: const Text('Contact Clinic',
                style: TextStyle(color: AppColors.dolar)),
          ),
        ),
      ],
    );
  }
}
