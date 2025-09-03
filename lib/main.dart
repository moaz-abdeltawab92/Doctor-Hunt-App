import 'package:doctor_hunt/core/DI/dependency_ingection.dart' as di;
import 'package:doctor_hunt/core/routing/route_export.dart';

void main() async {
  di.setup();
  runApp(const MyApp());
}
