import 'package:doctor_hunt/core/routing/route_export.dart';

class OnBoardinItemBody extends StatelessWidget {
  const OnBoardinItemBody({
    super.key,
    required this.imagePath,
    required this.title,
    required this.description,
    required this.pageController,
    required this.currentPage,
    required this.isLastPage,
  });

  final String imagePath;
  final String title;
  final String description;
  final PageController pageController;
  final int currentPage;
  final bool isLastPage;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Positioned(bottom: 420, top: -100, left: -80, child: Shape()),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Circleavatar(imagePath: imagePath),
            verticalSpace(60),
            Text(title, style: AppTextStyles.title),
            verticalSpace(10),
            Text(
              description,
              style: AppTextStyles.description,
              textAlign: TextAlign.center,
            ),
            verticalSpace(40),
            GetStarted(
              pageController: pageController,
              isLastPage: isLastPage,
            ),
            verticalSpace(5),
            // Show Skip button only on first page (currentPage == 0)
            currentPage == 0
                ? Skip(pageController: pageController)
                : const SizedBox.shrink(),
          ],
        ),
      ],
    );
  }
}
