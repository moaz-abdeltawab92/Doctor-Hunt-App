import 'package:doctor_hunt/core/constants/app_assets.dart';
import 'package:doctor_hunt/core/theming/colors/colors.dart';
import 'package:doctor_hunt/core/theming/style/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class PopularDoctorCard extends StatefulWidget {
  const PopularDoctorCard({
    super.key,
  });

  @override
  State<PopularDoctorCard> createState() => _PopularDoctorCardState();
}

List<Map<String, String>> doctorsList = [
  {
    'image': AppAssets.firstdoctor,
    'name': 'Dr. Fillerup Grab',
    'specialty': 'Medicine Specialist',
    'rating': '3.5',
  },
  {
    'image': AppAssets.seconddoctor,
    'name': 'Dr. Blessing',
    'specialty': 'Dentist Specialist',
    'rating': '4',
  },
];

class _PopularDoctorCardState extends State<PopularDoctorCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: SizedBox(
        height: 275,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: doctorsList.length,
          itemBuilder: (context, index) {
            final doctor = doctorsList[index];
            return Card(
              color: AppColors.white1,
              child: Column(
                children: [
                  Image.asset(
                    doctor['image']!,
                    width: 170,
                    height: 190,
                  ),
                  Text(
                    doctor['name']!,
                    style: AppTextStyles.popularDoctortitle,
                  ),
                  Text(
                    doctor['specialty']!,
                    style: AppTextStyles.popularDoctorsubtitle,
                  ),
                  RatingBar.builder(
                    initialRating: double.parse(doctor['rating'] ?? '0'),
                    minRating: 0,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemSize: 20.0,
                    itemBuilder: (context, _) => const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {},
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
