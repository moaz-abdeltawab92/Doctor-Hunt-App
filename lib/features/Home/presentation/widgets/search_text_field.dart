import 'package:doctor_hunt/core/theming/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        decoration: InputDecoration(
      filled: true,
      fillColor: AppColors.white1,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0.r),
        borderSide: BorderSide.none,
      ),
      prefixIcon: Icon(
        Icons.search,
        size: 21.sp,
      ),
      hintText: 'Search Doctors',
      suffixIcon: Icon(
        Icons.close,
        size: 21.sp,
      ),
    ));
  }
}
