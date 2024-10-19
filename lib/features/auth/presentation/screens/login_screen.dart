import 'package:doctor_hunt/core/helpers/spacer.dart';
import 'package:doctor_hunt/features/auth/presentation/screens/signup_screen.dart';
import 'package:doctor_hunt/features/auth/presentation/widgets/Social_Login_Buttons.dart';
import 'package:doctor_hunt/features/auth/presentation/widgets/account_status_widget.dart';
import 'package:doctor_hunt/features/auth/presentation/widgets/forgot_password.dart';
import 'package:doctor_hunt/features/auth/presentation/widgets/head_text.dart';
import 'package:doctor_hunt/core/widgets/login_button.dart';
import 'package:doctor_hunt/features/auth/presentation/widgets/sub_Title_text.dart';
import 'package:flutter/material.dart';

import '../../../../core/widgets/Text_Form_fielddd.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      height: double.maxFinite,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xFFCCE6FF),
            Colors.white,
            Color(0xFFE8F5E9),
          ],
          stops: [0.0, 0.5, 1.0],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 135),
        child: SingleChildScrollView(
          child: Column(
            children: [
              HeadText(
                headText: "Welcome back",
              ),
              verticalSpace(10),
              const SubTitle(
                text:
                    "You can search course, apply course and find scholarship for abroad studies",
              ),
              verticalSpace(70),
              const SocialLoginButtons(),
              verticalSpace(40),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: AppTextFormField(
                  hintText: "itsmemamun1@gmail.com",
                  suffixIcon: Icon(Icons.check, color: Colors.grey),
                  fillColor: Colors.white,
                  enabledBorderSideColor: Colors.grey,
                  focusdBorderColor: Colors.black,
                  radius: 16,
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 12.0,
                  ),
                  inputStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                  ),
                  hintStyle: TextStyle(
                    color: Colors.black54,
                    fontSize: 16.0,
                  ),
                ),
              ),
              verticalSpace(15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: AppTextFormField(
                  hintText: "••••••••",
                  isObscureText: isObscure,
                  suffixIcon: IconButton(
                    icon: Icon(
                      isObscure ? Icons.visibility_off : Icons.visibility,
                      color: Colors.grey,
                    ),
                    onPressed: () {
                      setState(() {
                        isObscure = !isObscure;
                      });
                    },
                  ),
                  fillColor: Colors.white,
                  enabledBorderSideColor: Colors.grey,
                  focusdBorderColor: Colors.black,
                  radius: 16,
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 12.0,
                  ),
                  inputStyle: const TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                  ),
                  hintStyle: const TextStyle(
                    color: Colors.black54,
                    fontSize: 16.0,
                  ),
                ),
              ),
              verticalSpace(15),
              const Login(
                text: "Login",
              ),
              verticalSpace(8),
              const forgotPassword(),
              verticalSpace(100),
              AccountStatus(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignupScreen()),
                  );
                },
                title: "Don't have an account?",
                title2: "Join us",
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
