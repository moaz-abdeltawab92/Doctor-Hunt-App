import 'package:doctor_hunt/core/routing/route_export.dart';

class Skip extends StatelessWidget {
  const Skip({
    super.key,
    required this.pageController,
  });

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        child: Text(
          AppString.skipbutton,
          style: AppTextStyles.skipbutton,
        ),
        onPressed: () {
          // Navigate directly to the 3rd onboarding page (index 2)
          pageController.animateToPage(
            2,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
          );
        });
  }
}
