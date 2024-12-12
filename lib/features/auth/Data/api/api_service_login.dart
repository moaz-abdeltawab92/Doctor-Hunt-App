import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:doctor_hunt/core/error/error_model.dart';
import 'package:doctor_hunt/features/auth/Data/models/login_request_model.dart';

import '../models/authentaction_response_sucess_model.dart';

class ApiServiceLogin {
  Dio dio;
  ApiServiceLogin({required this.dio});

  Future<void> login({
    String? email,
    int? password,
  }) async {
    LoginRequestModel loginRequestModel = LoginRequestModel(
      email: email,
      password: password,
    );
    //from API
    FormData formData = FormData.fromMap(loginRequestModel.toJson());
    try {
      //store request data in response variable
      Response response = await dio.post(
          'https://vcare.integration25.com/api/auth/login',
          data: formData);
      log(AuthentactionResponseSucessModel.fromJson(response.data)
          .data
          .toString());
    } on DioException catch (e) {
      log(ErrorModel.fromJson(e.response!.data).status.toString());
    }
  }
}
