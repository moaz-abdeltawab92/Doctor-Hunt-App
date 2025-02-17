import 'package:doctor_hunt/core/helpers/spacer.dart';
import 'package:doctor_hunt/core/routing/onboarding_item_routes.dart';
import 'package:doctor_hunt/features/Home/presentation/widgets/custom_heart.dart';
import 'package:doctor_hunt/features/Home/presentation/widgets/select_time_custom_starts_rating.dart';
import 'package:doctor_hunt/features/select_time/presentation/widgets/book_now_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorInfoDetailsScreen extends StatelessWidget {
  const DoctorInfoDetailsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              blurRadius: 6.r,
              offset: const Offset(0, 3),
            ),
          ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0.r),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0.w, vertical: 10.0.h),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/card1.png',
                height: 87.0.h,
                width: 92.0.w,
              ),
              horizontalSpace(8.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Dr. Pediatrician',
                      style: AppTextStyles.topCardDoctor2,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                    const Text(
                      'Specialist Cardiologist ',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                    verticalSpace(5.h),
                    Row(
                      children: [
                        const SelectTimeCustomStarsRating(),
                        horizontalSpace(40.w),
                        const Text(' 28.00/hr')
                      ],
                    ),
                    verticalSpace(15.h),
                    BookNowButton(
                      text: 'Book Now',
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              const CustomHeart(),
            ],
          ),
        ),
      ),
    ]);
  }
}
