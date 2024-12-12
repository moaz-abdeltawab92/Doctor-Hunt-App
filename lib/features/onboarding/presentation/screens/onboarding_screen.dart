import 'package:doctor_hunt/core/constants/app_assets.dart';
import 'package:doctor_hunt/core/constants/app_string.dart';
import 'package:doctor_hunt/features/onboarding/presentation/widgets/onboarding_item.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<StatefulWidget> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: PageView(
          controller: _pageController,
          onPageChanged: (int index) {
            setState(() {
              currentPage = index;
            });
          },
          children: [
            OnboardingItem(
              imagePath: AppAssets.onboarding1,
              title: AppString.headonboarding1,
              description: AppString.descriptionOnboarding,
              pageController: _pageController,
            ),
            OnboardingItem(
              imagePath: AppAssets.onboarding2,
              title: AppString.headonboarding2,
              description: AppString.descriptionOnboarding,
              pageController: _pageController,
            ),
            OnboardingItem(
              imagePath: AppAssets.onboarding3,
              title: AppString.headonboarding3,
              description: AppString.descriptionOnboarding,
              pageController: _pageController,
            ),
          ],
        ),
      ),
    );
  }
}
