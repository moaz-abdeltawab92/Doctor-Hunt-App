import 'package:doctor_hunt/core/routing/route_export.dart';

class PopularDoctorCard extends StatefulWidget {
  const PopularDoctorCard({
    super.key,
  });

  @override
  State<PopularDoctorCard> createState() => _PopularDoctorCardState();
}
//! TODO: Use App Strings file instead

class _PopularDoctorCardState extends State<PopularDoctorCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: SizedBox(
        height: 275.h,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: doctorsList.length,
          itemBuilder: (context, index) {
            final doctor = doctorsList[index];
            return Card(
              color: AppColors.white1,
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10.r),
                    child: Image.asset(
                      doctor['image']!,
                      width: 190.w,
                      height: 180.h,
                      fit: BoxFit.cover,
                    ),
                  ),
                  verticalSpace(10),
                  Text(
                    doctor['name']!,
                    style: AppTextStyles.popularDoctortitle,
                  ),
                  Text(
                    doctor['specialty']!,
                    style: AppTextStyles.popularDoctorsubtitle,
                  ),
                  verticalSpace(2),
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

