import 'dart:convert';
import 'dart:io';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:houlala_app/features/app_menu/model/app_menu.dart';
import 'package:http/http.dart';

class AppMenuRepository {
  Future<List<AppMenu>> fetchMenuItems() async {
    String? uri = dotenv.env['AMENU_URL'];
    final Response response = await get(Uri.parse(uri!));
    if (response.statusCode == HttpStatus.ok) {
      List<dynamic> body = jsonDecode(response.body);
      List<AppMenu> entities =
          body.map((dynamic userMenu) => AppMenu.fromJson(userMenu)).toList();
      return entities;
    } else {
      throw 'no entities';
    }
  }
}
