import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class ScureStorage {
  static final FlutterSecureStorage _storage = FlutterSecureStorage();

  static Future<void> saveData({
    required String key,
    required String value,
  }) async {
    await _storage.write(key: key, value: value);
  }

  static Future<String?> getData({required String value}) async {
    return await _storage.read(key: value);
  }

  static Future<void> deleteData({required String value}) async {
    await _storage.delete(key: value);
  }

  static Future<void> saveLogIn({
    required String username,
    required String id,
  }) async {
    await _storage.write(key: 'username', value: username);
    await _storage.write(key: 'id', value: id);
  }

  static Future<void> logOut() async {
    await _storage.delete(key: 'username');
    await _storage.delete(key: 'id');
  }
}
