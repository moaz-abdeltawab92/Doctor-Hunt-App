import 'package:doctor_hunt/core/routing/route_export.dart';

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

