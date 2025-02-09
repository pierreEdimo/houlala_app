import 'package:flutter/services.dart';

class AssetLoader {
  static Future<String> loadAsset(String path) async {
    return await rootBundle.loadString(path);
  }
}