import 'package:doctor_hunt/core/routing/route_export.dart';

class SlotButton extends StatelessWidget {
  final String time;

  const SlotButton({super.key, required this.time});

  @override
  Widget build(BuildContext context) {
    bool isSelected = time == '2:00 PM';
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor:
            isSelected ? AppColors.notificationIcon : AppColors.backgroundColor,
        foregroundColor: isSelected ? AppColors.white1 : AppColors.primaryColor,
        padding: EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 10.0.h),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0.r),
        ),
      ),
      child: Text(
        time,
        style: TextStyle(
          fontSize: 12.0.sp,
        ),
      ),
    );
  }
}

