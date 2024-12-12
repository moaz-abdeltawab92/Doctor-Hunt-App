import 'package:doctor_hunt/core/routing/homepage_routes.dart';
import 'package:doctor_hunt/core/theming/colors/colors.dart';
import '../widgets/popular_doctor_card.dart';

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
            verticalSpace(20),
            const Categories(),
            verticalSpace(20),
            const PopularDoctor(
              text1: AppString.populardoctors,
            ),
            const PopularDoctorCard(),
            verticalSpace(10),
            const PopularDoctor(
              text1: AppString.featuredoctors,
            ),
            const FeatureDoctorCard(),
          ],
        ),
      ),
    );
  }
}
