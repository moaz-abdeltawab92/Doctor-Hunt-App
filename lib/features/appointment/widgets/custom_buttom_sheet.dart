import 'package:doctor_hunt/core/helpers/spacer.dart';
import 'package:doctor_hunt/core/theming/style/app_text_styles.dart';
import 'package:doctor_hunt/features/appointment/widgets/active_and_inactive_appointmen.dart';
import 'package:doctor_hunt/features/appointment/widgets/active_and_inactive_appointment_reminder_listview.dart';
import 'package:doctor_hunt/features/appointment/widgets/custom_button.dart';
import 'package:doctor_hunt/features/appointment/widgets/show_success_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBottomSheet extends StatefulWidget {
  final DateTime selectedDate;
  final VoidCallback onConfirm;

  const CustomBottomSheet({
    super.key,
    required this.selectedDate,
    required this.onConfirm,
  });

  @override
  State<CustomBottomSheet> createState() => _CustomBottomSheetState();
}

class _CustomBottomSheetState extends State<CustomBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width, // Full width
      padding: EdgeInsets.all(20.0.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20.r),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Available Time',
            style: AppTextStyles.availableTime,
          ),
          verticalSpace(27.h),
          const ActiveAndInactiveAppointmentClockListview(),
          verticalSpace(38.h),
          Text(
            'Reminder Me Before',
            style: AppTextStyles.reminderMe,
          ),
          verticalSpace(27.h),
          const ActiveAndInactiveAppointmentReminderListview(),
          verticalSpace(20.h),
          Center(
            child: CustomButton(
              text: 'Confirm',
              onPressed: () {
                showSuccessDialog(context);
              },
            ),
          )
        ],
      ),
    );
  }
}
