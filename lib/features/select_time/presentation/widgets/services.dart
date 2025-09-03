import 'package:doctor_hunt/core/routing/route_export.dart';

class ServicesWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Services', style: AppTextStyles.servicesText),
        verticalSpace(8.h),
        _buildServiceItem(1, 'Patient care should be the number one priority.'),
        const Divider(color: AppColors.grey, thickness: 0.5),
        _buildServiceItem(
            2, 'If you run your practice you know how frustrating.'),
        const Divider(color: AppColors.grey, thickness: 0.5),
        _buildServiceItem(3, 'That’s why some of appointment reminder system.'),
      ],
    );
  }

  Widget _buildServiceItem(int index, String text) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4.0.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('$index. ', style: AppTextStyles.servicesText2),
          Expanded(
            child: Text(text, style: AppTextStyles.servicesText3),
          ),
        ],
      ),
    );
  }
}

