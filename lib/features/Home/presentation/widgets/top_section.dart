import 'package:doctor_hunt/core/constants/app_assets.dart';
import 'package:doctor_hunt/core/helpers/spacer.dart';
import 'package:doctor_hunt/core/theming/style/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TopSection extends StatelessWidget {
  const TopSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(40),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xFF0EBE7E),
            Color(0xFF07D9AD),
          ],
          stops: [0.0084, 0.9565],
        ),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(50.r),
          bottomRight: Radius.circular(50.r),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  verticalSpace(20),
                  Text("Hi Handwerker! ", style: AppTextStyles.welcomemessage),
                  verticalSpace(8),
                  Text("Find Your Doctor", style: AppTextStyles.tophomemessage),
                ],
              ),
              CircleAvatar(
                radius: 33.r,
                backgroundImage: const AssetImage(AppAssets.topsection),
              ),
            ],
          ),
          verticalSpace(20),
        ],
      ),
    );
  }
}
