import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  final String text;
  const Login({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF0EBE7F),
          padding: const EdgeInsets.symmetric(horizontal: 125),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Text(
          '$text',
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
      ),
    );
  }
}
