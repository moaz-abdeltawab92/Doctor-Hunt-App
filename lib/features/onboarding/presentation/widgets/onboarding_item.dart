import 'package:doctor_hunt/core/routing/route_export.dart';

class OnboardingItem extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;
  final PageController pageController;
  final int currentPage;
  final bool isLastPage;

  const OnboardingItem({
    super.key,
    required this.imagePath,
    required this.title,
    required this.description,
    required this.pageController,
    required this.currentPage,
    required this.isLastPage,
  });

  @override
  Widget build(BuildContext context) {
    return OnBoardinItemBody(
        imagePath: imagePath,
        title: title,
        description: AppString.descriptionOnboarding,
        pageController: pageController,
        currentPage: currentPage,
        isLastPage: isLastPage);
  }
}
