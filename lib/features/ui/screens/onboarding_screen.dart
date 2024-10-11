import 'package:doctor_hunt/features/home/data/models/onboarding_item.dart';
import 'package:flutter/material.dart';
import 'homescreen.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  PageController _pageController = PageController();
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Positioned(
          //   bottom: 420,
          //   top: -100,
          //   left: -80,
          //   child: Container(
          //     width: 290,
          //     height: 370,
          //     decoration: BoxDecoration(
          //       color: const Color.fromARGB(255, 60, 194, 154),
          //       shape: BoxShape.circle,
          //     ),
          //   ),
          // ),
          //
          PageView(
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
          Positioned(
            bottom: 30,
            left: 0,
            right: 0,
            child: ElevatedButton(
              onPressed: () {
                if (currentPage == 2) {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => Homescreen()),
                  );
                } else {
                  _pageController.nextPage(
                    duration: Duration(milliseconds: 500),
                    curve: Curves.ease,
                  );
                }
              },
              child: GestureDetector(onTap: () {
                if (currentPage == 2) {}
              }),
            ),
          ),
        ],
      ),
    );
  }
}
