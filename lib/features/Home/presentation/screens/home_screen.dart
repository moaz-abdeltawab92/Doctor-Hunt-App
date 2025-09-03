import 'package:doctor_hunt/core/routing/route_export.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavigation(),
      backgroundColor: AppColors.backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const TopSection(),
            verticalSpace(20.h),
            const Categories(),
            verticalSpace(20.h),
            const PopularDoctor(
              text1: AppString.populardoctors,
            ),
            const PopularDoctorCard(),
            verticalSpace(10.h),
            const PopularDoctor(
              text1: 'Feature Doctor',
            ),
            const FeatureDoctorCard(),
          ],
        ),
      ),
    );
  }
}

