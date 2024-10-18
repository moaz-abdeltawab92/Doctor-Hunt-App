import 'package:flutter/material.dart';

class SubTitle extends StatelessWidget {
  const SubTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      "You can search course, apply course and find scholarship for abroad studies",
      style: TextStyle(
        color: Color.fromARGB(255, 129, 128, 128),
        fontSize: 15,
      ),
      textAlign: TextAlign.center,
    );
  }
}
