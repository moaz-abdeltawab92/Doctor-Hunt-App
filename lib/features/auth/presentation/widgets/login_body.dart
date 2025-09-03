import 'package:doctor_hunt/core/routing/route_export.dart';

class LoginBody extends StatefulWidget {
  const LoginBody({super.key});

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  Future<void> checkSavedToken() async {
    final token = await locator<SecureStorageService>().getToken();
    if (token != null && token.isNotEmpty) {
      log('Token retrieved successfully: $token');
    } else {
      log('No token found.');
    }
  }

  bool isObscure = true;
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const HeadText(
          headText: AppString.loginhead,
        ),
        verticalSpace(10),
        SubTitle(
          text: AppString.subtitleAuth,
        ),
        verticalSpace(40),
        const SocialLoginButtons(),
        verticalSpace(40),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: EmailField(
            controller: email,
            hintText: "itsmemamun1@gmail.com",
            suffixIcon: const Icon(Icons.check, color: Colors.grey),
          ),
        ),
        verticalSpace(15),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: PasswordField(
            controller: password,
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
        AuthButton(
          onPressed: () async {
            if (email.text.isEmpty || password.text.isEmpty) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text(
                    'Please enter both email and password.',
                    style: TextStyle(color: Colors.white),
                  ),
                  backgroundColor: Colors.red,
                ),
              );
              return;
            }

            try {
              await locator<LoginRepo>().loginRepo(
                email: email.text,
                password: password.text,
              );

              final token = await locator<SecureStorageService>().getToken();
              if (token != null && token.isNotEmpty) {
                log('Token retrieved successfully: $token');
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomePage()),
                );
              } else {
                throw Exception('Login failed: Token not found.');
              }
            } catch (e) {
              log('Login error: $e');
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text(
                    'Login failed: Invalid email or password.',
                    style: TextStyle(color: Colors.white),
                  ),
                  backgroundColor: Colors.red,
                ),
              );
            }
          },
          text: 'Login',
        ),
        verticalSpace(20),
        const ForgotPassword(),
        verticalSpace(50),
        AccountStatus(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SignupScreen()),
            );
          },
          title: "Don't have an account?",
          title2: 'Join us',
        ),
      ],
    );
  }
}
