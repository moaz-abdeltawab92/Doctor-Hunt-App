import 'package:doctor_hunt/core/helpers/spacer.dart';
import 'package:doctor_hunt/core/widgets/custom_Appbar.dart';
import 'package:doctor_hunt/features/Home/presentation/widgets/search_result_list_view.dart';
import 'package:doctor_hunt/features/Home/presentation/widgets/search_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/widgets/custom_background .dart';

class FindDoctorScreen extends StatefulWidget {
  const FindDoctorScreen({super.key});

  @override
  State<FindDoctorScreen> createState() => _FindDoctorScreenState();
}

//Todo: Complete This Screen
//Todo: Check the UI Again , Make it Responsive and check for using all theming files
class _FindDoctorScreenState extends State<FindDoctorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //background for all screens
          const CustomBackground(),
          Padding(
            padding: EdgeInsets.only(right: 20.0.w, left: 20.0.w, top: 40.0.h),
            child: Column(children: [
              const CustomAppbar(
                appBarTitle: "Find Doctors",
              ),
              verticalSpace(35.h),
              const SearchTextField(),
              verticalSpace(20.h),
              const Expanded(child: SearchResultListView()),
            ]),
          )
        ],
      ),
    );
  }
}
