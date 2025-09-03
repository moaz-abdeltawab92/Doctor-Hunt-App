import 'package:doctor_hunt/core/routing/route_export.dart';

class ListComments extends StatelessWidget {
  const ListComments({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          CommentTile(
            image: AppAssets.comment1,
            name: 'Everhart Tween',
            comment: 'Thanks for sharing doctor',
            icon: Icons.favorite,
            iconColor: AppColors.heart,
          ),
          CommentTile(
            image: AppAssets.comment2,
            name: 'Bonebrake Mash',
            comment: 'They treat immune system disorders',
            icon: Icons.info,
            iconColor: AppColors.info,
          ),
          CommentTile(
            image: AppAssets.comment3,
            name: 'Handler Wack',
            comment: 'This is the largest directory',
            icon: Icons.thumb_up,
            iconColor: AppColors.like,
          ),
          CommentTile(
            image: AppAssets.comment4,
            name: 'Comfort Love',
            comment: 'Depending on their education',
            icon: Icons.star,
            iconColor: AppColors.star,
          ),
        ],
      ),
    );
  }
}

