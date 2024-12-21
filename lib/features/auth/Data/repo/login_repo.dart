import 'package:doctor_hunt/features/auth/Data/api/api_service_login.dart';

class LoginRepo {
  ApiServiceLogin apiServiceLogin;

  LoginRepo({required this.apiServiceLogin});

  Future<void> loginRepo({String? email, String? password}) async {
    apiServiceLogin.login(email: email, password: password);
  }
}
