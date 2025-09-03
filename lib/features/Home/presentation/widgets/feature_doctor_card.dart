import 'package:doctor_hunt/core/routing/route_export.dart';

class FeatureDoctorCard extends StatefulWidget {
  const FeatureDoctorCard({super.key});

  @override
  State<FeatureDoctorCard> createState() => _FeatureDoctorCardState();
}

class _FeatureDoctorCardState extends State<FeatureDoctorCard> {
  List<bool> isLikedList = List.generate(doctorsList.length, (index) => false);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: SizedBox(
        height: 185.h,
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
                    Padding(
                      padding: const EdgeInsets.only(right: 9),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            icon: Icon(
                              isLikedList[index]
                                  ? Icons.favorite
                                  : Icons.favorite_border,
                              color:
                                  isLikedList[index] ? Colors.red : Colors.grey,
                              size: 20.sp,
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
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: 17.sp,
                              ),
                              horizontalSpace(3),
                              Text(doctor['rating']!,
                                  style: const TextStyle(
                                      fontWeight: FontWeightHelper.extraBold)),
                            ],
                          ),
                        ],
                      ),
                    ),
                    CircleAvatar(
                      radius: 35.r,
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

