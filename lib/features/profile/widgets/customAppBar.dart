import 'package:doctor_hunt/core/routing/route_export.dart';

class CustomAppbar2 extends StatelessWidget {
  const CustomAppbar2({
    super.key,
    required this.appBarTitle,
  });

  final String appBarTitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.0.h),
      child: Row(
        children: [
          GestureDetector(
            child: SvgPicture.asset(AppAssets.backButton),
            onTap: () => Navigator.pop(context),
          ),
          horizontalSpace(20.w),
          Expanded(
            child: Text(
              appBarTitle,
              style: AppTextStyles.customAppBar2,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          ),
        ],
      ),
    );
  }
}

