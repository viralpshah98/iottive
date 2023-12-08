import 'package:get_storage/get_storage.dart';

const kAuthorizationToken = 'kAuthorizationToken';
const kUserId = 'kUserId';
const kIsLoggedIn = 'kIsLoggedIn';

class GetStorageUtils {
  static GetStorage get storage => GetStorage();

  static void setString(String key, String value) {
    storage.write(key, value);
  }

  static Future<String> getString(String key, String defaultValue) async {
    return await storage.read(key) ?? defaultValue;
  }

  static void setBoolean(String key, bool value) {
    storage.write(key, value);
  }

  static Future<int> getInt(String key, int defaultValue) async {
    return await storage.read(key) ?? defaultValue;
  }

  static void setInt(String key, int value) {
    storage.write(key, value);
  }

  static Future<bool> getBoolean(String key, bool defaultValue) async {
    return await storage.read(key) ?? defaultValue;
  }

  static Future<void> clearStorage() async {
    return storage.erase();
  }
}
