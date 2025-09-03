import 'package:doctor_hunt/core/routing/route_export.dart';

class StarIcon extends StatelessWidget {
  final bool isSelected;
  final double size;

  const StarIcon({super.key, required this.isSelected, required this.size});

  @override
  Widget build(BuildContext context) {
    return Icon(
      isSelected ? Icons.star_rate_rounded : Icons.star_border_rounded,
      color: isSelected ? AppColors.star : AppColors.grey,
      size: size,
    );
  }
}

