import 'package:doctor_hunt/core/routing/settings_screen_routes.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const CustomBackground(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 40.0.h),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  verticalSpace(10.h),
                  const CustomAppbar(appBarTitle: 'Settings'),
                  verticalSpace(15.h),
                  const AccountSettings(),
                  const MoreOptions(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
