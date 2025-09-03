import 'package:doctor_hunt/core/routing/route_export.dart';
import 'package:doctor_hunt/features/onboarding/presentation/screens/onboarding_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Future<bool> _isUserLoggedIn() async {
    final storage = SecureStorageService();
    String? token = await storage.getToken();

    if (token != null && token.isNotEmpty) {
      debugPrint('Token found: $token');
      return true;
    }

    debugPrint('No token found.');
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return FutureBuilder<bool>(
          future: _isUserLoggedIn(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const MaterialApp(
                home: Scaffold(
                  body: Center(child: CircularProgressIndicator()),
                ),
              );
            }

            // final bool isLoggedIn = snapshot.data ?? false;
            return const MaterialApp(
                debugShowCheckedModeBanner: false, home: OnboardingScreen()
                //  isLoggedIn ? const LoginScreen() : const SignupScreen(),
                );
          },
        );
      },
    );
  }
}
