import 'package:doctor_hunt/core/routing/route_export.dart';

class SecureStorageService {
  final FlutterSecureStorage _secureStorage = const FlutterSecureStorage();

  Future<void> saveToken(String token) async {
    await _secureStorage.write(key: 'token', value: token);
  }

  Future<String?> getToken() async {
    return await _secureStorage.read(
      key: 'token',
    );
  }

  Future<void> deleteToken() async {
    await _secureStorage.delete(key: 'token');
  }
}

/*
/ Create storage
final storage = new FlutterSecureStorage();

/ Read value
String value = await storage.read(key: key);

/ Read all values
Map<String, String> allValues = await storage.readAll();

/ Delete value
await storage.delete(key: key);

/ Delete all
await storage.deleteAll();

/ Write value
await storage.write(key: key, value: value);

 */
