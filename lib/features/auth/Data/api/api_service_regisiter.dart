import 'package:doctor_hunt/core/routing/route_export.dart';

class ApiServiceRegisiter {
  Dio dio;
  ApiServiceRegisiter({required this.dio});

  Future<AuthentactionResponseSucessModel> register({
    String? name,
    String? email,
    int? phoneNumber,
    int? gender,
    String? password,
    String? passwordConfirmation,
  }) async {
    AuthentactionRequestModel authentactionRequestModel =
        AuthentactionRequestModel(
      name: name,
      email: email,
      phoneNumber: phoneNumber,
      gender: gender,
      password: password,
      passwordConfirmation: passwordConfirmation,
    );

    FormData formData = FormData.fromMap(authentactionRequestModel.toJson());

    try {
      Response response = await dio.post(
        'https://vcare.integration25.com/api/auth/register',
        data: formData,
      );

      //log('Full API Response: ${response.data.toString()}');
      final successResponse =
          AuthentactionResponseSucessModel.fromJson(response.data);

      return successResponse;
    } on DioException catch (e) {
      if (e.response?.data is List) {
        log('Error Response: ${e.response?.data}');
        throw Exception(
            'Registration failed: ${(e.response?.data as List).join(", ")}');
      } else if (e.response?.data is Map<String, dynamic>) {
        log('Error Response: ${e.response?.data}');
        throw Exception('Registration failed: ${e.response?.data['message']}');
      } else {
        throw Exception('Registration failed: ${e.message}');
      }
    }
  }
}
