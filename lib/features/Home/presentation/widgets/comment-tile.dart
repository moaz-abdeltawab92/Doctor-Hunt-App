import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
        style: TextStyle(
            color: Colors.white, fontSize: 17.sp, fontWeight: FontWeight.bold),
      ),
      subtitle: Text(
        comment,
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
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
