import 'package:doctor_hunt/core/routing/route_export.dart';

class AuthRepo {
  final ApiServiceRegisiter apiService;
  final SecureStorageService secureStorage;

  AuthRepo({
    required this.apiService,
    required this.secureStorage,
  });

  Future<void> registerRepo({
    String? name,
    String? email,
    int? phoneNumber,
    int? gender,
    String? password,
    String? passwordConfirmation,
  }) async {
    try {
      final response = await apiService.register(
        name: name,
        email: email,
        phoneNumber: phoneNumber,
        gender: gender,
        password: password,
        passwordConfirmation: passwordConfirmation,
      );

      final String? token = response.data?.token;

      if (token != null) {
        await secureStorage.saveToken(token);
        log('Token saved successfully: $token');
      }
    } catch (e) {
      throw Exception('Registration failed: $e');
    }
  }
}

