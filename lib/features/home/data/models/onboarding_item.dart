import 'package:doctor_hunt/features/ui/screens/homescreen.dart';
import 'package:flutter/material.dart';

class OnboardingItem extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;
  final PageController pageController;

  OnboardingItem({
    required this.imagePath,
    required this.title,
    required this.description,
    required this.pageController,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Positioned(
            bottom: 420,
            top: -100,
            left: -80,
            child: Container(
              width: 290,
              height: 370,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 60, 194, 154),
                shape: BoxShape.circle,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 170,
                backgroundImage: AssetImage(imagePath),
              ),
              const SizedBox(height: 60),
              Text(
                title,
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                description,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[600],
                ),
              ),
              const SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {
                  pageController.nextPage(
                    duration: Duration(milliseconds: 200),
                    curve: Curves.easeIn,
                  );
                },
                child: Text(
                  'Get Started',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF3FBD97),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Homescreen()),
                  );
                },
                child: Text(
                  'Skip',
                  style: TextStyle(
                    fontSize: 16,
                    color: const Color.fromARGB(255, 121, 121, 121),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
