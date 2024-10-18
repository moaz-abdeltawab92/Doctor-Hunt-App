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
              imagePath: 'assets/doctor.png',
              title: 'Find Trusted Doctors',
              description:
                  'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of it over 2000 years old.',
              pageController: _pageController,
            ),
            OnboardingItem(
              imagePath: 'assets/nurse.png',
              title: 'Choose Best Doctors',
              description:
                  'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of it over 2000 years old.',
              pageController: _pageController,
            ),
            OnboardingItem(
              imagePath: 'assets/onboard3.png',
              title: 'Easy Appointments',
              description:
                  'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of it over 2000 years old.',
              pageController: _pageController,
            ),
          ],
        ),
      ),
    );
  }
}
