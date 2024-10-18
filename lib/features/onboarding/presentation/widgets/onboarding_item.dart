import 'package:doctor_hunt/features/onboarding/presentation/widgets/on_boarding_item_body.dart';
import 'package:flutter/material.dart';

class OnboardingItem extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;
  final PageController pageController;

  const OnboardingItem({
    super.key,
    required this.imagePath,
    required this.title,
    required this.description,
    required this.pageController,
  });

  @override
  Widget build(BuildContext context) {
    return onBoardinItemBody(
        imagePath: imagePath,
        title: title,
        description: description,
        pageController: pageController);
  }
}
