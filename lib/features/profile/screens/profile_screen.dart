import 'package:doctor_hunt/core/routing/profile_screen_routes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        const CustomBackground(),
        SingleChildScrollView(
          child: Column(
            children: [
              // Header Section
              const HeaderSection(),
              verticalSpace(20.h),
              // Personal Information Section
              const PersonalInformation(),
              verticalSpace(12.h),
              // Continue Button
              const ContinueButton(),
            ],
          ),
        ),
      ]),
    );
  }
}
