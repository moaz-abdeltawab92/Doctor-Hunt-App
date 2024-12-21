import 'package:dio/dio.dart';
import 'package:doctor_hunt/features/auth/Data/api/api_service_login.dart';
import 'package:doctor_hunt/features/auth/Data/api/api_service_regisiter.dart';
import 'package:doctor_hunt/features/auth/Data/repo/auth_repo.dart';
import 'package:doctor_hunt/features/auth/Data/repo/login_repo.dart';
import 'package:doctor_hunt/features/auth/Data/repo/secure_storage_service.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

void setup() async {
  locator.registerLazySingleton(() => Dio());

  locator.registerLazySingleton(() => SecureStorageService());

  locator.registerLazySingleton(() => ApiServiceRegisiter(dio: locator<Dio>()));

  locator.registerLazySingleton(() => AuthRepo(
        apiService: locator<ApiServiceRegisiter>(),
        secureStorage: locator<SecureStorageService>(),
      ));

  locator.registerLazySingleton(() => ApiServiceLogin(dio: locator<Dio>()));

  locator.registerLazySingleton(
      () => LoginRepo(apiServiceLogin: locator<ApiServiceLogin>()));
}
