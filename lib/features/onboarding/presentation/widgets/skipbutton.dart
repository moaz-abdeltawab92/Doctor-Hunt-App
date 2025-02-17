import 'package:doctor_hunt/core/constants/app_string.dart';
import 'package:doctor_hunt/core/theming/style/app_text_styles.dart';
import 'package:flutter/material.dart';

class Skip extends StatelessWidget {
  const Skip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
        child: Text(
          AppString.skipbutton,
          style: AppTextStyles.skipbutton,
        ),
        onPressed: () {
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(builder: (context) => const LoginScreen()),
          // );
        });
  }
}
