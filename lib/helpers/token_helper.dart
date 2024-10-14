import 'package:houlala_app/main.dart';

class TokenHelper {
  static void saveToken(String token) async {
    await storage.write(key: 'token', value: token);
  }

  static Future<String?>? getToken() async {
    return await storage.read(key: 'token');
  }

  static void deleteToken() async {
    await storage.delete(key: 'token');
  }
}
