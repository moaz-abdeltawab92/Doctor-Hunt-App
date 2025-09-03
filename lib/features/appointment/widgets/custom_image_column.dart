import 'package:doctor_hunt/core/routing/route_export.dart';

class CustomImageColumn extends StatelessWidget {
  final String imagePath;
  final String label;

  const CustomImageColumn({
    super.key,
    required this.imagePath,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 100.w,
          height: 125.h,
          child: Image.asset(
            imagePath,
          ),
        ),
        Text(
          label,
          style: AppTextStyles.customImageColumn,
        ),
      ],
    );
  }
}

