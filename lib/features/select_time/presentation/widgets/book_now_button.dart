import 'package:doctor_hunt/core/routing/route_export.dart';

class BookNowButton extends StatelessWidget {
  final String text;
  final void Function()? onPressed;

  const BookNowButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.buttonColor,
          padding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 15.w),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.r),
          ),
          //minimumSize: const Size(double.infinity, 25),
          minimumSize: Size(1.sw, 25.h),
        ),
        child: Text(
          text,
          style: AppTextStyles.bookNowButton,
        ),
      ),
    );
  }
}

