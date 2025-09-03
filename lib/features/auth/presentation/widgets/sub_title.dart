import 'package:doctor_hunt/core/routing/route_export.dart';

class SubTitle extends StatelessWidget {
  final String text;
  final Color color;

  const SubTitle({
    super.key,
    required this.text,
    this.color = AppColors.description,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppTextStyles.subauth,
      textAlign: TextAlign.center,
    );
  }
}

