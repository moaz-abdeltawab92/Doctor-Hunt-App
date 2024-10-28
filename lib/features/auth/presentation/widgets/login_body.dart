import 'package:doctor_hunt/core/constants/app_string.dart';
import 'package:doctor_hunt/core/routing/auth_routes.dart';
import 'package:flutter/material.dart';

class LoginBody extends StatefulWidget {
  const LoginBody({super.key});

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const HeadText(
          headText: "Welcome back",
        ),
        verticalSpace(10),
        const SubTitle(
          text: AppString.subtitleAuth,
        ),
        verticalSpace(70),
        const SocialLoginButtons(),
        verticalSpace(40),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: EmailField(
            hintText: "itsmemamun1@gmail.com",
            suffixIcon: Icon(Icons.check, color: Colors.grey),
          ),
        ),
        verticalSpace(15),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: PasswordField(
            hintText: "••••••••",
            isObscure: isObscure,
            toggleObscure: () {
              setState(() {
                isObscure = !isObscure;
              });
            },
          ),
        ),
        verticalSpace(15),
        const AuthButton(
          text: "Login",
        ),
        verticalSpace(20),
        const ForgotPassword(),
        verticalSpace(100),
        AccountStatus(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SignupScreen()),
            );
          },
          title: "Don't have an account?",
          title2: "Join us",
        ),
      ],
    );
  }
}
