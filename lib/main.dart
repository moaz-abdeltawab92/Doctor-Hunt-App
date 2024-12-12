import 'package:flutter/material.dart';
import 'app.dart';
import 'core/DI/dependency_ingection.dart' as di;

void main() async {
  di.setup();
  runApp(const MyApp());
}
