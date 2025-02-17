import 'package:doctor_hunt/core/helpers/spacer.dart';
import 'package:doctor_hunt/core/widgets/custom_Appbar.dart';
import 'package:doctor_hunt/core/widgets/custom_background%20.dart';
import 'package:doctor_hunt/features/select_time/presentation/widgets/avaliable_days.dart';
import 'package:doctor_hunt/features/select_time/presentation/widgets/doctor_info.dart';
import 'package:doctor_hunt/features/select_time/presentation/widgets/slots_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/style/app_text_styles.dart';

class SelectDayDetails extends StatefulWidget {
  const SelectDayDetails({super.key});

  @override
  State<SelectDayDetails> createState() => _SelectDayDetailsState();
}

class _SelectDayDetailsState extends State<SelectDayDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        const CustomBackground(),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 40.0.h),
            child: SingleChildScrollView(
                child: Column(children: [
              const CustomAppbar(appBarTitle: 'Select Time'),
              verticalSpace(34.h),
              const DoctorInfo(),
              verticalSpace(20.h),
              AvailableDays(),
              verticalSpace(40.h),
              Text(
                'Today, 23 Feb',
                style: AppTextStyles.selectDay,
              ),
              verticalSpace(30.h),
              const SlotsSection(),
            ]))),
      ]),
    );
  }
}
