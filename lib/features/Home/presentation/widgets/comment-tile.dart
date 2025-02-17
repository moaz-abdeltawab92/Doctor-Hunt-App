import 'package:doctor_hunt/core/theming/style/app_text_styles.dart';
import 'package:flutter/material.dart';

class CommentTile extends StatelessWidget {
  final String name;
  final String image;
  final String comment;
  final IconData icon;
  final Color iconColor;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(image),
      ),
      title: Text(
        name,
        style: AppTextStyles.commentTitle,
      ),
      subtitle: Text(
        comment,
        style: AppTextStyles.commentSubTitle,
      ),
      trailing: Icon(icon, color: iconColor),
    );
  }

  CommentTile({
    required this.name,
    required this.comment,
    required this.icon,
    required this.iconColor,
    required this.image,
  });
}
