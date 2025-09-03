import 'package:doctor_hunt/core/routing/route_export.dart';

// map_widget.dart
class MapWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: AppColors.borderProfileScreen),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12.r),
        child: Image.asset(
          'assets/map.png',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

