import 'package:doctor_hunt/core/routing/route_export.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({
    super.key,
    required this.pageController,
    required this.isLastPage,
  });

  final PageController pageController;
  final bool isLastPage;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        if (isLastPage) {
          // Navigate to LoginScreen when on the last page (page 3)
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const LoginScreen()),
          );
        } else {
          // Go to next page
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
