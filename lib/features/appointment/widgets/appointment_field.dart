import 'package:doctor_hunt/core/routing/onboarding_item_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppointmentForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5.0.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Appointment For',
            style: AppTextStyles.appointmentTitle,
          ),
          verticalSpace(10.h),
          TextField(
            decoration: InputDecoration(
              hintText: 'Patient Name',
              //filled: true,
              //fillColor: AppColors.backgroundColor,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.r),
                //  borderSide: BorderSide.none,
              ),
            ),
          ),
          verticalSpace(10.h),
          TextField(
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
              hintText: 'Contact Number',
              // filled: true,
              //fillColor: AppColors.backgroundColor,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.r),
                // borderSide: BorderSide.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
