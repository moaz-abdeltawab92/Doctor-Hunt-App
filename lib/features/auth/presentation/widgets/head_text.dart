import 'package:flutter/material.dart';

class HeadText extends StatelessWidget {
  final String headText;

  HeadText({
    super.key,
    required this.headText,
  });
  @override
  @override
  Widget build(BuildContext context) {
    return Text(
      "$headText",
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    );
  }
}
