import 'package:doctor_hunt/core/theming/style/app_text_styles.dart';
import 'package:flutter/material.dart';

class AccountStatus extends StatelessWidget {
  final String title;
  final String title2;
  final Function()? onTap;

  const AccountStatus({
    super.key,
    required this.title,
    required this.title2,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    double responsivePadding = screenWidth * 0.05;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: responsivePadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: AppTextStyles.accountStatus,
          ),
          TextButton(
            onPressed: () {
              if (onTap != null) {
                onTap!();
              }
            },
            child: Text(title2, style: AppTextStyles.accountStatus),
          ),
        ],
      ),
    );
  }
}
