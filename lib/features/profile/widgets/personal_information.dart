import 'package:doctor_hunt/core/helpers/spacer.dart';
import 'package:doctor_hunt/core/theming/style/app_text_styles.dart';
import 'package:doctor_hunt/features/profile/widgets/profile_screen_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PersonalInformation extends StatelessWidget {
  const PersonalInformation({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Personal information',
              style: AppTextStyles.personalInformation),
          verticalSpace(10.h),
          const CustomTextField(
            label: 'Name',
            hintText: 'Abdullah Mamun',
            icon: Icons.edit,
          ),
          const CustomTextField(
            label: 'Contact Number',
            hintText: '+8801800000000',
            icon: Icons.edit,
          ),
          const CustomTextField(
            label: 'Date of birth',
            hintText: 'DD MM YYYY',
            icon: Icons.edit,
          ),
          const CustomTextField(
            label: 'Location',
            hintText: 'Add Details',
          ),
        ],
      ),
    );
  }
}
