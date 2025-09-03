import 'package:doctor_hunt/core/routing/route_export.dart';

class Circleavatar extends StatelessWidget {
  const Circleavatar({
    super.key,
    required this.imagePath,
  });

  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 170.r,
      backgroundImage: AssetImage(imagePath),
    );
  }
}

