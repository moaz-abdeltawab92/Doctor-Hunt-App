import 'package:doctor_hunt/core/routing/route_export.dart';

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

