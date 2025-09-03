import 'package:doctor_hunt/core/routing/route_export.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final String hintText;
  final IconData? icon;

  const CustomTextField({
    super.key,
    required this.label,
    required this.hintText,
    this.icon,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 12.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: AppTextStyles.label),
          verticalSpace(8.h),
          TextFormField(
            decoration: InputDecoration(
              hintText: hintText,
              suffixIcon:
                  icon != null ? Icon(icon, color: AppColors.grey) : null,
              contentPadding:
                  EdgeInsets.symmetric(vertical: 14.h, horizontal: 16.w),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.r),
                borderSide: BorderSide(color: AppColors.borderProfileScreen),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

