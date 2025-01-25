import 'package:doctor_hunt/core/constants/app_assets.dart';
import 'package:doctor_hunt/core/routing/homepage_routes.dart';

class ChatLiveBackground extends StatelessWidget {
  const ChatLiveBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppAssets.chatLive),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
