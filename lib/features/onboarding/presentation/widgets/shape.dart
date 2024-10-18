import 'package:flutter/material.dart';

class shape extends StatelessWidget {
  const shape({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 290,
      height: 370,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 60, 194, 154),
        shape: BoxShape.circle,
      ),
    );
  }
}
