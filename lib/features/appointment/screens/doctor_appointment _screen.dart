import 'package:doctor_hunt/core/helpers/spacer.dart';
import 'package:doctor_hunt/core/widgets/custom_Appbar.dart';
import 'package:doctor_hunt/core/widgets/custom_background%20.dart';
import 'package:doctor_hunt/features/Home/presentation/widgets/bottom_navigation.dart';
import 'package:doctor_hunt/features/appointment/widgets/appointment_field.dart';
import 'package:doctor_hunt/features/appointment/widgets/custom_button.dart';
import 'package:doctor_hunt/features/appointment/widgets/custom_card.dart';
import 'package:doctor_hunt/features/appointment/widgets/patient_listview.dart';
import 'package:doctor_hunt/features/appointment/widgets/who_is_patient_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorAppointmentScreen extends StatefulWidget {
  const DoctorAppointmentScreen({super.key});

  @override
  State<DoctorAppointmentScreen> createState() =>
      _DoctorAppointmentScreenState();
}

class _DoctorAppointmentScreenState extends State<DoctorAppointmentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavigation(),
      body: Stack(
        children: [
          const CustomBackground(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 40.0.h),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const CustomAppbar(appBarTitle: 'Appointment'),
                  verticalSpace(34.h),
                  const CustomCard(),
                  verticalSpace(20.h),
                  AppointmentForm(),
                  verticalSpace(35.h),
                  const WhoIsPatientText(),
                  verticalSpace(5.h),
                  const PatientListView(),
                  CustomButton(
                    text: 'Next',
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
