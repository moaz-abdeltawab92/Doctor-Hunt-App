import 'package:doctor_hunt/core/constants/app_assets.dart';
import 'package:flutter/material.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({super.key});

  @override
  Widget build(BuildContext context) {
    return const Positioned(
      top: 40,
      right: 16,
      child: CircleAvatar(
        radius: 20,
        backgroundImage: AssetImage(
          AppAssets.topChatLive,
        ),
      ),
    );
  }
}
