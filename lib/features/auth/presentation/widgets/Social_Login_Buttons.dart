import 'package:doctor_hunt/core/helpers/spacer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialLoginButtons extends StatelessWidget {
  const SocialLoginButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 40),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              SvgPicture.asset(
                "assets/Group.svg",
                height: 24,
                width: 24,
              ),
              horizontalSpace(10),
              const Text(
                "Google",
                style: TextStyle(
                  color: Color.fromARGB(255, 27, 25, 25),
                ),
              ),
            ],
          ),
        ),
        horizontalSpace(10),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 40),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              SvgPicture.asset(
                "assets/Group 2.svg",
                height: 24,
                width: 24,
              ),
              horizontalSpace(10),
              const Text(
                "Facebook",
                style: TextStyle(
                  color: const Color.fromARGB(255, 27, 25, 25),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
