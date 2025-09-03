import 'package:doctor_hunt/core/routing/route_export.dart';

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

