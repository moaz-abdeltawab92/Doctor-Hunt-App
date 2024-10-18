import 'package:flutter/material.dart';

class dontHaveAccount extends StatelessWidget {
  final String title;
  final String title2;
  final Function()? onTap;

  const dontHaveAccount({
    super.key,
    required this.title,
    required this.title2,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '$title',
            style: TextStyle(color: Color(0xFF0EBE7F)),
          ),
          TextButton(
            onPressed: () {
              onTap!();
            },
            child: Text('$title2', style: TextStyle(color: Color(0xFF0EBE7F))),
          ),
        ],
      ),
    );
  }
}//Don’t have an account?
//Join us
