import 'package:doctor_hunt/core/helpers/spacer.dart';
import 'package:doctor_hunt/features/auth/presentation/screens/login_screen.dart';
import 'package:doctor_hunt/features/auth/presentation/widgets/Social_Login_Buttons.dart';
import 'package:doctor_hunt/features/auth/presentation/widgets/dont_hava_account.dart';
import 'package:doctor_hunt/features/auth/presentation/widgets/head_text.dart';
import 'package:doctor_hunt/features/auth/presentation/widgets/login_button.dart';
import 'package:doctor_hunt/features/auth/presentation/widgets/sub_Title_text.dart';
import 'package:flutter/material.dart';

import '../../../../core/widgets/Text_Form_fielddd.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreen();
}

class _SignupScreen extends State<SignupScreen> {
  bool isChecked = false;

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
                headText: "Join us to start searching",
              ),
              verticalSpace(10),
              const SubTitle(),
              verticalSpace(70),
              const SocialLoginButtons(),
              verticalSpace(40),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: AppTextFormField(
                  hintText: "Name",
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
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: AppTextFormField(
                  hintText: "Email",
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
                  hintText: "Password",
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
                  const Text.rich(
                    TextSpan(
                      text: 'I agree with the ',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                      children: [
                        TextSpan(
                          text: 'Terms of Service',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                          ),
                        ),
                        TextSpan(text: ' & '),
                        TextSpan(
                          text: 'Privacy Policy',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              verticalSpace(30),
              Login_button(
                text: "Sign up",
              ),
              verticalSpace(8),
              dontHaveAccount(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                },
                title: "Have an account? ",
                title2: "Log in",
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
