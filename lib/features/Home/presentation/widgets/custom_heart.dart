import 'package:doctor_hunt/core/theming/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomHeart extends StatefulWidget {
  const CustomHeart({
    super.key,
  });

  @override
  State<CustomHeart> createState() => _CustomHeartState();
}

class _CustomHeartState extends State<CustomHeart> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
      child: Icon(
        size: 22.sp,
        isFavorite ? Icons.favorite_rounded : Icons.favorite_border_rounded,
        color: isFavorite ? AppColors.heart : AppColors.grey,
      ),
    );
  }
}
