import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Circleavatar extends StatelessWidget {
  const Circleavatar({
    super.key,
    required this.imagePath,
  });

  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 170.r,
      backgroundImage: AssetImage(imagePath),
    );
  }
}
