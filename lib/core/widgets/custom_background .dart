import 'package:doctor_hunt/core/routing/route_export.dart';

class CustomBackground extends StatelessWidget {
  const CustomBackground({
    super.key,
  });

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
        image: const DecorationImage(
          image: AssetImage(AppAssets.backgroundImage),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

