import 'package:doctor_hunt/core/routing/route_export.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({
    super.key,
    required this.appBarTitle,
  });

  final String appBarTitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          child: SvgPicture.asset('assets/back_button.svg'),
          onTap: () => Navigator.pop(context),
        ),
        horizontalSpace(20),
        Expanded(
          child: Text(
            appBarTitle,
            style: AppTextStyles.customAppBar,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
        ),
      ],
    );
  }
}

