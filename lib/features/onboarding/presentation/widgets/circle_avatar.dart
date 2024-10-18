import 'package:flutter/material.dart';

class Circleavatar extends StatelessWidget {
  const Circleavatar({
    super.key,
    required this.imagePath,
  });

  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 170,
      backgroundImage: AssetImage(imagePath),
    );
  }
}
