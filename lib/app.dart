import 'package:doctor_hunt/features/Home/presentation/screens/doctor_live_screen.dart';
import 'package:doctor_hunt/features/Home/presentation/screens/home_screen.dart';
import 'package:doctor_hunt/features/auth/Data/repo/secure_storage_service.dart';
import 'package:doctor_hunt/features/auth/presentation/screens/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:doctor_hunt/features/auth/presentation/screens/login_screen.dart';

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
            return MaterialApp(
                debugShowCheckedModeBanner: false, home: DoctorLiveScreen()
                //  isLoggedIn ? const LoginScreen() : const SignupScreen(),
                );
          },
        );
      },
    );
  }
}
