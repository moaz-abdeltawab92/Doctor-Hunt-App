import 'package:doctor_hunt/core/helpers/spacer.dart';
import 'package:doctor_hunt/features/Home/presentation/widgets/bottom_navigation.dart';
import 'package:doctor_hunt/features/Home/presentation/widgets/categories.dart';
import 'package:doctor_hunt/features/Home/presentation/widgets/feature_doctor_card.dart';
import 'package:doctor_hunt/features/Home/presentation/widgets/popular_doctor.dart';
import 'package:doctor_hunt/features/Home/presentation/widgets/popular_doctor_card.dart';
import 'package:doctor_hunt/features/Home/presentation/widgets/top_section.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavigation(),
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const TopSection(),
            verticalSpace(20),
            const Categories(),
            verticalSpace(20),
            const PopularDoctor(
              text1: "Popular Doctor",
            ),
            const PopularDoctorCard(),
            verticalSpace(10),
            const PopularDoctor(
              text1: "Feature Doctor",
            ),
            const FeatureDoctorCard(),
          ],
        ),
      ),
    );
  }
}
