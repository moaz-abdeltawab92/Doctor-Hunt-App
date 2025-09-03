import 'package:doctor_hunt/core/routing/route_export.dart';

//Todo fix Bug of the photo
//Todo to be updated
//Todo Refactor this code and use theming files for styling if needed and make it responsive

class CustomCardSearchResult extends StatelessWidget {
  const CustomCardSearchResult({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 6,
            offset: const Offset(0, 3),
          ),
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0.r),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 18.0.h),
        child: Column(
          children: [
            _buildDoctorInfo(),
            verticalSpace(20),
            _buildAvailabilityAndButton(context),
          ],
        ),
      ),
    );
  }

  Widget _buildDoctorInfo() {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(8.r),
        child: Image.asset(
          'assets/card1.png',
          height: 90.h,
          width: 90.w,
          fit: BoxFit.contain,
        ),
      ),
      title: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Dr. Shruti Kediadi',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
          CustomHeart(),
        ],
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Tooths Dentist',
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: AppColors.gradientStartHeart),
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
          const Text(
            '7 Years experience',
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
          verticalSpace(10),
          _buildPatientStories(),
        ],
      ),
    );
  }

  Widget _buildPatientStories() {
    return Row(
      children: [
        CircleAvatar(
          radius: 5.r,
          backgroundColor: AppColors.gradientStartHeart,
        ),
        horizontalSpace(3),
        const Text(
          '20%',
          style: TextStyle(
            fontWeight: FontWeight.w300,
            color: AppColors.primaryColor,
          ),
        ),
        horizontalSpace(10),
        CircleAvatar(
          radius: 5.r,
          backgroundColor: AppColors.gradientStartHeart,
        ),
        horizontalSpace(3),
        const Text(
          '69 Patient Stories',
          style: TextStyle(
            fontWeight: FontWeight.w300,
            color: AppColors.primaryColor,
          ),
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
        ),
      ],
    );
  }

  Widget _buildAvailabilityAndButton(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Next Available ',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: AppColors.gradientStartHeart),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
            Row(
              children: [
                Text(
                  '10:00 ',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  'AM tomorrow',
                ),
              ],
            ),
          ],
        ),
        AppTextButton(
          buttonWidth: 112,
          buttonHeight: 34,
          borderRadius: 4.r,
          buttonText: 'Book Now',
          textStyle: const TextStyle(fontWeight: FontWeight.w400),
          onPressed: () {},
        )
      ],
    );
  }
}

