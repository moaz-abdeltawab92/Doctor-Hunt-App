import 'package:doctor_hunt/core/routing/route_export.dart';

class LoginRepo {
  ApiServiceLogin apiServiceLogin;

  LoginRepo({required this.apiServiceLogin});

  Future<void> loginRepo({String? email, String? password}) async {
    apiServiceLogin.login(email: email, password: password);
  }
}

