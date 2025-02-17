import 'package:doctor_hunt/core/constants/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 40,
      right: 16,
      child: CircleAvatar(
        radius: 20.r,
        backgroundImage: const AssetImage(
          AppAssets.topChatLive,
        ),
      ),
    );
  }
}
