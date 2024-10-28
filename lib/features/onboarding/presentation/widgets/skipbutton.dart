import 'package:doctor_hunt/core/theming/style/app_styles.dart';
import 'package:doctor_hunt/features/auth/presentation/screens/login_screen.dart';
import 'package:flutter/material.dart';

class Skip extends StatelessWidget {
  const Skip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
        child: Text(
          'Skip',
          style: AppTextStyles.skipbutton,
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const LoginScreen()),
          );
        });
  }
}
