import 'package:flutter/material.dart';

class PrivacyPolicyText extends StatelessWidget {
  const PrivacyPolicyText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text.rich(
      TextSpan(
        text: 'I agree with the ',
        style: TextStyle(
          fontSize: 12,
        ),
        children: [
          TextSpan(
            text: 'Terms of Service',
            style: TextStyle(
              fontSize: 12,
              color: Colors.black,
            ),
          ),
          TextSpan(text: ' & '),
          TextSpan(
            text: 'Privacy Policy',
            style: TextStyle(
              fontSize: 12,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
