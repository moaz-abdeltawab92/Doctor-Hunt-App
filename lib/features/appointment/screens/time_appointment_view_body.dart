import 'package:doctor_hunt/core/helpers/spacer.dart';
import 'package:doctor_hunt/core/widgets/custom_appbar.dart';
import 'package:doctor_hunt/core/widgets/custom_background%20.dart';
import 'package:doctor_hunt/features/appointment/widgets/custom_buttom_sheet.dart';
import 'package:doctor_hunt/features/appointment/widgets/custom_date_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TimeAppointmentViewBody extends StatefulWidget {
  const TimeAppointmentViewBody({super.key});

  @override
  State<TimeAppointmentViewBody> createState() =>
      _TimeAppointmentViewBodyState();
}

class _TimeAppointmentViewBodyState extends State<TimeAppointmentViewBody> {
  DateTime _selectedDate = DateTime.now();

  void _showBottomSheet(BuildContext context, DateTime selectedDate) {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20.r),
        ),
      ),
      isScrollControlled: true,
      builder: (BuildContext context) {
        return CustomBottomSheet(
          selectedDate: selectedDate,
          onConfirm: () {
            Navigator.pop(context);
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const CustomBackground(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 40.0.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomAppbar(appBarTitle: 'Appointment'),
                verticalSpace(20.h),
                CustomDatePicker(
                  minDate: DateTime(2000, 1, 1),
                  maxDate: DateTime(2050, 12, 31),
                  initialDate: _selectedDate,
                  onDateSelected: (date) {
                    setState(() {
                      _selectedDate = date;
                    });
                    _showBottomSheet(context, date); // Show bottom sheet
                  },
                ),
                verticalSpace(20.h),
                verticalSpace(20.h),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
