import 'package:doctor_hunt/core/routing/onboarding_item_routes.dart';
import 'package:flutter/material.dart';

class OnBoardinItemBody extends StatelessWidget {
  const OnBoardinItemBody({
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
        const Positioned(bottom: 420, top: -100, left: -80, child: Shape()),
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
            verticalSpace(5),
            const Skip(),
          ],
        ),
      ],
    );
  }
}
