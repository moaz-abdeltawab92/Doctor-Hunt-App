import 'package:doctor_hunt/core/routing/profile_screen_routes.dart';
import 'package:doctor_hunt/core/theming/colors/colors.dart';

class AvailableDays extends StatelessWidget {
  final List<Map<String, String>> availableDays = [
    {'day': 'Today, 23 Feb', 'slots': 'No slots available'},
    {'day': 'Tomorrow, 24 Feb', 'slots': '9 slots available'},
    {'day': 'Thu, 25 Feb', 'slots': '10 slots available'},
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: availableDays.map((dayInfo) {
          final isActive = dayInfo['slots'] != 'No slots available';

          return Padding(
            padding: EdgeInsets.only(right: 12.0.w),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
              decoration: BoxDecoration(
                color: isActive ? AppColors.dolar : AppColors.white1,
                borderRadius: BorderRadius.circular(8.r),
                border: Border.all(
                  color: isActive
                      ? AppColors.primaryColor
                      : AppColors.borderProfileScreen,
                ),
                boxShadow: isActive
                    ? [
                        BoxShadow(
                          color: AppColors.dolar.withOpacity(0.3),
                          blurRadius: 6.r,
                          offset: const Offset(0, 3),
                        ),
                      ]
                    : [],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    dayInfo['day']!,
                    style: TextStyle(
                      color: isActive ? Colors.white : Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 14.sp,
                    ),
                  ),
                  verticalSpace(8.h),
                  Text(
                    dayInfo['slots']!,
                    style: TextStyle(
                      color: isActive ? Colors.white : Colors.black54,
                      fontSize: 12.sp,
                    ),
                  ),
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
