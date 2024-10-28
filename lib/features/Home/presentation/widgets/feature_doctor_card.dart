import 'package:doctor_hunt/core/constants/app_assets.dart';
import 'package:doctor_hunt/core/helpers/spacer.dart';
import 'package:doctor_hunt/core/theming/colors/colors.dart';
import 'package:doctor_hunt/core/theming/style/app_styles.dart';
import 'package:doctor_hunt/core/theming/style/font_weight_helper.dart';
import 'package:flutter/material.dart';

class FeatureDoctorCard extends StatefulWidget {
  const FeatureDoctorCard({super.key});

  @override
  State<FeatureDoctorCard> createState() => _FeatureDoctorCardState();
}

List<Map<String, String>> doctorsList = [
  {
    'image': AppAssets.featuredoctor1,
    'name': 'Dr. Crick',
    'price': ' 25.00/ hours',
    'rating': '3.7',
  },
  {
    'image': AppAssets.featuredoctor2,
    'name': 'Dr. Strain',
    'price': ' 22.00/ hours',
    'rating': '3.0',
  },
  {
    'image': AppAssets.featuredoctor3,
    'name': 'Dr. Lachinet',
    'price': ' 29.00/ hours',
    'rating': '2.9',
  },
  {
    'image': AppAssets.featuredoctor4,
    'name': 'Dr. Young',
    'specialty': 'Medicine Specialist',
    'price': ' 30.00/ hours',
    'rating': '3.5',
  },
];

class _FeatureDoctorCardState extends State<FeatureDoctorCard> {
  List<bool> isLikedList = List.generate(doctorsList.length, (index) => false);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: SizedBox(
        height: 185,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: doctorsList.length,
          itemBuilder: (context, index) {
            final doctor = doctorsList[index];
            return Card(
              color: AppColors.white1,
              child: Padding(
                padding: const EdgeInsets.all(0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          icon: Icon(
                            isLikedList[index]
                                ? Icons.favorite
                                : Icons.favorite_border,
                            color:
                                isLikedList[index] ? Colors.red : Colors.grey,
                            size: 20,
                          ),
                          onPressed: () {
                            setState(() {
                              isLikedList[index] = !isLikedList[index];
                            });
                          },
                        ),
                        horizontalSpace(30),
                        Row(
                          children: [
                            const Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 20,
                            ),
                            horizontalSpace(3),
                            Text(doctor['rating']!,
                                style: const TextStyle(
                                    fontWeight: FontWeightHelper.extraBold)),
                          ],
                        ),
                      ],
                    ),
                    CircleAvatar(
                      radius: 35,
                      backgroundImage: AssetImage(doctor['image']!),
                    ),
                    verticalSpace(6),
                    Text(
                      doctor['name']!,
                      style: AppTextStyles.featuredoctors,
                    ),
                    verticalSpace(1),
                    Row(
                      children: [
                        Text('\$ ', style: AppTextStyles.dolar),
                        Text(
                          doctor['price']?.replaceAll('\$', '') ?? '',
                          style: AppTextStyles.popularDoctorsubtitle,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
