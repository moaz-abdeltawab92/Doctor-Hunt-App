import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:doctor_hunt/core/error/error_model.dart';
import 'package:doctor_hunt/features/auth/Data/models/authentaction_request_model.dart';

import '../models/authentaction_response_sucess_model.dart';

class ApiServiceRegisiter {
  Dio dio;
  ApiServiceRegisiter({required this.dio});

  Future<void> register(
      {String? name,
      String? email,
      int? phoneNumber,
      int? gender,
      int? password,
      int? passwordConfirmation}) async {
    AuthentactionRequestModel authentactionRequestModel =
        AuthentactionRequestModel(
            name: name,
            email: email,
            phoneNumber: phoneNumber,
            gender: gender,
            password: password,
            passwordConfirmation: passwordConfirmation);
    FormData formData = FormData.fromMap(authentactionRequestModel.toJson());
    try {
      Response response = await dio.post(
          'https://vcare.integration25.com/api/auth/register',
          data: formData);
      log(AuthentactionResponseSucessModel.fromJson(response.data)
          .data
          .toString());
    } on DioException catch (e) {
      log(ErrorModel.fromJson(e.response!.data).status.toString());
    }
  }
}
