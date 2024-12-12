import 'package:doctor_hunt/features/auth/Data/api/api_service_regisiter.dart';

class AuthRepo {
  ApiServiceRegisiter apiService;
  AuthRepo({
    required this.apiService,
  });

  Future<void> registerRepo(
      {String? name,
      String? email,
      int? phoneNumber,
      int? gender,
      int? password,
      int? passwordConfirmation}) async {
    apiService.register(
        name: name,
        email: email,
        phoneNumber: phoneNumber,
        gender: gender,
        password: password,
        passwordConfirmation: passwordConfirmation);
  }
}
