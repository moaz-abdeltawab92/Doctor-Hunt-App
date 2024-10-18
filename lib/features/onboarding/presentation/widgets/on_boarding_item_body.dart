import 'package:doctor_hunt/core/helpers/spacer.dart';
import 'package:doctor_hunt/core/theming/style/app_styles.dart';
import 'package:doctor_hunt/features/onboarding/presentation/widgets/circle_avatar.dart';
import 'package:doctor_hunt/features/onboarding/presentation/widgets/getstarted_button.dart';
import 'package:doctor_hunt/features/onboarding/presentation/widgets/shape.dart';
import 'package:doctor_hunt/features/onboarding/presentation/widgets/skipbutton.dart';
import 'package:flutter/material.dart';

class onBoardinItemBody extends StatelessWidget {
  const onBoardinItemBody({
    super.key,
    required this.imagePath,
    required this.title,
    required this.description,
    required this.pageController,
  });

  final String imagePath;
  final String title;
  final String description;
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(bottom: 420, top: -100, left: -80, child: shape()),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Circleavatar(imagePath: imagePath),
            verticalSpace(60),
            Text(title, style: AppTextStyles.title),
            verticalSpace(10),
            Text(
              description,
              style: AppTextStyles.description,
              textAlign: TextAlign.center,
            ),
            verticalSpace(40),
            GetStarted(pageController: pageController),
            verticalSpace(20),
            const Skip(),
          ],
        ),
      ],
    );
  }
}
