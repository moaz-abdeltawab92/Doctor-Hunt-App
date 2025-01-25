import 'package:doctor_hunt/core/helpers/spacer.dart';
import 'package:doctor_hunt/features/Home/presentation/widgets/add_comment.dart';
import 'package:doctor_hunt/features/Home/presentation/widgets/go_back_icon.dart';
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

//TODO_ Refactor this Screen
class _DoctorLiveScreenState extends State<DoctorLiveScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const ChatLiveBackground(),
          const BackIcon(),
          const ProfilePicture(),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.25),
                borderRadius: BorderRadius.vertical(top: Radius.circular(20.w)),
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
