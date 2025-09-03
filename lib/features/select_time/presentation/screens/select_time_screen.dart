import 'package:doctor_hunt/core/routing/route_export.dart';

class SelectTimeScreen extends StatefulWidget {
  const SelectTimeScreen({super.key});

  @override
  State<SelectTimeScreen> createState() => _SelectTimeScreenState();
}

class _SelectTimeScreenState extends State<SelectTimeScreen> {
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
              verticalSpace(20.h),
              const Text('No slots avaliable'),
              verticalSpace(30.h),
              const BottomButtons(),
            ]))),
      ]),
    );
  }
}

