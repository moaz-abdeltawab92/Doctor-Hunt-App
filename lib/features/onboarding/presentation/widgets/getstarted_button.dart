import 'package:doctor_hunt/core/routing/route_export.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({
    super.key,
    required this.pageController,
  });

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        if (pageController.page == 2) {
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(builder: (context) => const LoginScreen()),
          // );
        } else {
          pageController.nextPage(
            duration: const Duration(milliseconds: 200),
            curve: Curves.easeIn,
          );
        }
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.buttonColor,
        padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 15),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Text(
        AppString.getstartedbutton,
        style: AppTextStyles.getstarted,
      ),
    );
  }
}

