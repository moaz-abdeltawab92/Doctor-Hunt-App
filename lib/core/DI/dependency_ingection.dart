import 'package:doctor_hunt/core/routing/route_export.dart';

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

