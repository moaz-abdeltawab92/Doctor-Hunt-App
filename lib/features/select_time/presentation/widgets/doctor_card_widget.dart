import 'package:doctor_hunt/core/routing/route_export.dart';

// doctor_card_widget.dart
class DoctorCardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 4,
      child: Padding(
        padding: EdgeInsets.all(16.0.h),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage('assets/doctor.jpg'),
            ),
            verticalSpace(16.h),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Dr. Pediatrician',
                    style: AppTextStyles.topCardDoctor,
                  ),
                  const Text(
                    'Specialist Cardiologist',
                    style: TextStyle(color: AppColors.grey),
                  ),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.amber, size: 16.sp),
                      Icon(Icons.star, color: Colors.amber, size: 16.sp),
                      Icon(Icons.star, color: Colors.amber, size: 16.sp),
                      Icon(Icons.star_half, color: Colors.amber, size: 16.sp),
                      Icon(Icons.star_border, color: Colors.amber, size: 16.sp),
                    ],
                  ),
                  verticalSpace(8.h),
                  Text('\$28.00/hr',
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                      )),
                ],
              ),
            ),
            IconButton(
              icon: const Icon(Icons.favorite_border, color: AppColors.heart),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}

