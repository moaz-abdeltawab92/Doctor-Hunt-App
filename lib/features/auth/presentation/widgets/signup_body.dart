import 'dart:developer';

import 'package:doctor_hunt/core/DI/dependency_ingection.dart';
import 'package:doctor_hunt/core/constants/app_string.dart';
import 'package:doctor_hunt/core/routing/auth_routes.dart';
import 'package:doctor_hunt/core/theming/colors/colors.dart';
import 'package:doctor_hunt/features/auth/Data/repo/auth_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignupBody extends StatefulWidget {
  const SignupBody({super.key});

  @override
  State<SignupBody> createState() => _SignupBodyState();
}

class _SignupBodyState extends State<SignupBody> {
  bool isChecked = false;
  bool isObscure = true;
  int selectedGender = 0;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const HeadText(
          headText: AppString.signuphead,
        ),
        verticalSpace(10),
        SubTitle(
          text: AppString.subtitleAuth,
        ),
        verticalSpace(50),
        const SocialLoginButtons(),
        verticalSpace(40),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: EmailField(
            controller: _nameController,
            hintText: "Name",
          ),
        ),
        verticalSpace(15),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: EmailField(
            controller: _emailController,
            hintText: "Email",
          ),
        ),
        verticalSpace(15),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: EmailField(
            controller: _phoneController,
            hintText: "Phone",
          ),
        ),
        verticalSpace(15),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: DropdownButtonFormField<int>(
            value: selectedGender,
            items: [
              DropdownMenuItem(
                value: 0,
                child: Text(
                  'Male',
                  style: TextStyle(fontSize: 14.sp),
                ),
              ),
              DropdownMenuItem(
                value: 1,
                child: Text(
                  'Female',
                  style: TextStyle(fontSize: 14.sp),
                ),
              ),
            ],
            onChanged: (value) {
              setState(() {
                selectedGender = 0;
                log('Selected Gender: $selectedGender');
              });
            },
            decoration: InputDecoration(
              labelText: 'Choose Your Gender',
              labelStyle: TextStyle(fontSize: 14.sp),
              border: const OutlineInputBorder(),
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
            ),
          ),
        ),
        verticalSpace(15),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: PasswordField(
            controller: _passwordController,
            hintText: "Password ",
            isObscure: isObscure,
            toggleObscure: () {
              setState(() {
                isObscure = !isObscure;
              });
            },
          ),
        ),
        verticalSpace(15),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: PasswordField(
            controller: _confirmPasswordController,
            hintText: "Confirm Password ",
            isObscure: isObscure,
            toggleObscure: () {
              setState(() {
                isObscure = !isObscure;
              });
            },
          ),
        ),
        verticalSpace(5),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Checkbox(
              checkColor: AppColors.white1,
              activeColor: AppColors.checkbox,
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
        verticalSpace(20),
        AuthButton(
          onPressed: () {
            locator<AuthRepo>().registerRepo(
              name: _nameController.text,
              email: _emailController.text,
              phoneNumber: int.parse(_phoneController.text),
              gender: selectedGender,
              password: int.parse(_passwordController.text),
              passwordConfirmation: int.parse(_confirmPasswordController.text),
            );
          },
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
