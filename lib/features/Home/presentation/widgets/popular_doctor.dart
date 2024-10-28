import 'package:doctor_hunt/core/helpers/spacer.dart';
import 'package:doctor_hunt/core/theming/style/app_styles.dart';
import 'package:doctor_hunt/features/Home/presentation/widgets/see_all_gesture.dart';
import 'package:flutter/material.dart';

class PopularDoctor extends StatelessWidget {
  final String text1;
  const PopularDoctor({
    super.key,
    required this.text1,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            text1,
            style: AppTextStyles.categorydoctors,
          ),
          horizontalSpace(135),
          const SeeAll()
        ],
      ),
    );
  }
}
