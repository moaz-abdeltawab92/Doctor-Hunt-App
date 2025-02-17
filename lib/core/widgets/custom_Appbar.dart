import 'package:doctor_hunt/core/helpers/spacer.dart';
import 'package:doctor_hunt/core/theming/style/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
