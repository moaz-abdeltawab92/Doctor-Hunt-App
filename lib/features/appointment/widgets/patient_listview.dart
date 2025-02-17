import 'package:doctor_hunt/core/routing/onboarding_item_routes.dart';
import 'package:doctor_hunt/core/theming/colors/colors.dart';
import 'package:doctor_hunt/features/appointment/widgets/custom_image_column.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'patient_list.dart';

class PatientListView extends StatelessWidget {
  const PatientListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160.h,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(right: 8.0.w),
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  width: 100.w,
                  height: 125.h,
                  decoration: BoxDecoration(
                    color: AppColors.patientContainer,
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.add_outlined,
                        size: 40.sp,
                        color: AppColors.patientContainerText,
                      ),
                      Text(
                        'Add',
                        style: AppTextStyles.addPatientButton,
                      )
                    ],
                  ),
                ),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              itemCount: patientItems.length,
              itemBuilder: (context, index) {
                final item = patientItems[index];
                return Padding(
                  padding: EdgeInsets.only(right: 8.0.w),
                  child: CustomImageColumn(
                    imagePath: item['imagePath']!,
                    label: item['label']!,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
