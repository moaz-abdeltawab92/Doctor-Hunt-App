import 'package:doctor_hunt/core/helpers/spacer.dart';
import 'package:flutter/material.dart';

//Todo : Don't forget to use this file for password validation
class PasswordValidation extends StatelessWidget {
  final bool hasUppercase;
  final bool hasLowercase;
  final bool hasSpecialChar;
  final bool hasNumber;
  final bool hasMinLength;

  const PasswordValidation(
      {super.key,
      required this.hasUppercase,
      required this.hasLowercase,
      required this.hasSpecialChar,
      required this.hasNumber,
      required this.hasMinLength});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildValidationRow('At least one lowercase letter', hasLowercase),
        verticalSpace(2),
        buildValidationRow('At least one uppercase letter', hasUppercase),
        verticalSpace(2),
        buildValidationRow('At least one special character', hasSpecialChar),
        verticalSpace(2),
        buildValidationRow('At least one Number', hasNumber),
        verticalSpace(2),
        buildValidationRow('At least 8 characters long', hasMinLength),
      ],
    );
  }

  Widget buildValidationRow(String text, bool hasValidated) {
    return Row(
      children: [
        const CircleAvatar(
          radius: 2.5,
          backgroundColor: Colors.grey,
        ),
        horizontalSpace(6),
        Text(text,
            style: TextStyle(
              decoration: hasValidated ? TextDecoration.lineThrough : null,
              decorationColor: Colors.green,
              decorationThickness: 2,
              fontSize: 12,
              color: hasValidated ? Colors.grey : Colors.black,
              fontWeight: FontWeight.w500,
            ))
      ],
    );
  }
}
