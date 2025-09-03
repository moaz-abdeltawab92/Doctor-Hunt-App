import 'package:doctor_hunt/core/routing/route_export.dart';

class ApiServiceLogin {
  Dio dio;
  ApiServiceLogin({required this.dio});

  Future<void> login({
    String? email,
    String? password,
  }) async {
    LoginRequestModel loginRequestModel = LoginRequestModel(
      email: email,
      password: password,
    );

    FormData formData = FormData.fromMap(loginRequestModel.toJson());
    try {
      Response response = await dio.post(
        'https://vcare.integration25.com/api/auth/login',
        data: formData,
      );

      final token =
          AuthentactionResponseSucessModel.fromJson(response.data).data?.token;

      if (token != null) {
        await locator<SecureStorageService>().saveToken(token);
        log('Token saved successfully: $token');
      } else {
        log('Token not found in response.');
        throw Exception('Login failed: Token not found.');
      }
    } on DioException catch (e) {
      log('Login API Error: ${e.response?.data}');
      throw Exception('Login failed: ${e.message}');
    }
  }
}

