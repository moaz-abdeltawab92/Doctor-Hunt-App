import 'package:doctor_hunt/core/constants/app_string.dart';
import 'package:doctor_hunt/core/routing/auth_routes.dart';
import 'package:flutter/material.dart';

class SignupBody extends StatefulWidget {
  const SignupBody({super.key});

  @override
  State<SignupBody> createState() => _SignupBodyState();
}

class _SignupBodyState extends State<SignupBody> {
  bool isChecked = false;

  bool isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const HeadText(
          headText: "Join us to start searching",
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
            hintText: "Name",
          ),
        ),
        verticalSpace(15),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: EmailField(
            hintText: "Email",
          ),
        ),
        verticalSpace(15),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: PasswordField(
            hintText: "Password",
            isObscure: isObscure,
            toggleObscure: () {
              setState(() {
                isObscure = !isObscure;
              });
            },
          ),
        ),
        verticalSpace(15),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Checkbox(
              value: isChecked,
              onChanged: (bool? value) {
                setState(() {
                  isChecked = value!;
                });
              },
            ),
            const PrivacyPolicyText(),
          ],
        ),
        verticalSpace(30),
        const AuthButton(
          text: "Sign up",
        ),
        verticalSpace(8),
        AccountStatus(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const LoginScreen()),
            );
          },
          title: "Have an account? ",
          title2: "Log in",
        ),
      ],
    );
  }
}
