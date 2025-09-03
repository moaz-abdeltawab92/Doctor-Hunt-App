import 'package:doctor_hunt/core/routing/route_export.dart';

class AddComment extends StatelessWidget {
  const AddComment({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0.w),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.white1,
          borderRadius: BorderRadius.circular(60.r),
          boxShadow: [
            BoxShadow(
              color: AppColors.primaryColor.withOpacity(0.1),
              blurRadius: 10.r,
            ),
          ],
        ),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              child: CircleAvatar(
                backgroundColor: AppColors.dolar,
                radius: 20.r,
                child: Icon(
                  Icons.message_outlined,
                  color: AppColors.white1,
                  size: 18.sp,
                ),
              ),
            ),
            Expanded(
              child: TextField(
                style: TextStyle(
                  fontSize: 14.sp,
                ),
                decoration: InputDecoration(
                  hintText: "Add a Comment......",
                  hintStyle: TextStyle(
                    color: AppColors.grey,
                    fontSize: 14.sp,
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              child: Icon(
                Icons.emoji_emotions_outlined,
                color: AppColors.grey,
                size: 22.sp,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

