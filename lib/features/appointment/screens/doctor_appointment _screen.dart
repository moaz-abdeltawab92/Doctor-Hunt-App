import 'package:doctor_hunt/core/routing/route_export.dart';

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

