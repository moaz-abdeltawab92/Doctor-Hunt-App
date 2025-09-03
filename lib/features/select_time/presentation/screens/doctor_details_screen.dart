import 'package:doctor_hunt/core/routing/route_export.dart';

class DoctorDetails extends StatefulWidget {
  const DoctorDetails({super.key});

  @override
  State<DoctorDetails> createState() => _DoctorDetailsState();
}

class _DoctorDetailsState extends State<DoctorDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        const CustomBackground(),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 40.0.h),
            child: SingleChildScrollView(
                child: Column(children: [
              const CustomAppbar(appBarTitle: 'Doctor Details'),
              verticalSpace(34.h),
              const DoctorInfoDetailsScreen(),
              verticalSpace(40.h),
              StatsWidget(),
              verticalSpace(20.h),
              ServicesWidget(),
              verticalSpace(10.h),
              //todo use app Assets
              Image.asset(
                AppAssets.mapImage,
                fit: BoxFit.fill,
                width: double.infinity.w,
                height: 200.h,
              ),
            ]))),
      ]),
    );
  }
}

