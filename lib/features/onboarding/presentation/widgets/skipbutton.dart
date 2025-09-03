import 'package:doctor_hunt/core/routing/route_export.dart';

class Skip extends StatelessWidget {
  const Skip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
        child: Text(
          AppString.skipbutton,
          style: AppTextStyles.skipbutton,
        ),
        onPressed: () {
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(builder: (context) => const LoginScreen()),
          // );
        });
  }
}

