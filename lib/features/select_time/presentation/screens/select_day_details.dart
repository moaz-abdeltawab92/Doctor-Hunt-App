import 'package:doctor_hunt/core/routing/route_export.dart';

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

