import 'package:doctor_hunt/core/helpers/spacer.dart';
import 'package:doctor_hunt/core/theming/colors/colors.dart';
import 'package:doctor_hunt/core/widgets/custom_Appbar.dart';
import 'package:doctor_hunt/features/Home/presentation/widgets/add_comment_texy_field.dart';
import 'package:doctor_hunt/features/Home/presentation/widgets/chat_live_background.dart';
import 'package:doctor_hunt/features/Home/presentation/widgets/list_comments.dart';
import 'package:doctor_hunt/features/Home/presentation/widgets/profile_pic.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorLiveScreen extends StatefulWidget {
  const DoctorLiveScreen({super.key});

  @override
  State<DoctorLiveScreen> createState() => _DoctorLiveScreenState();
}

// Todo: Refactor this screen and use theming files for styling
class _DoctorLiveScreenState extends State<DoctorLiveScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const ChatLiveBackground(),
          Padding(
            padding: EdgeInsets.only(top: 40.h, left: 20.w),
            child: const CustomAppbar(
              appBarTitle: "",
            ),
          ),
          const ProfilePicture(),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.primaryColor.withOpacity(0.5),
                borderRadius: BorderRadius.vertical(top: Radius.circular(20.r)),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  verticalSpace(400.h),
                  const ListComments(),
                  const AddComment(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
