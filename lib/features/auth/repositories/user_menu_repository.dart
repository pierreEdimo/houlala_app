import 'dart:convert';
import 'dart:io';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:houlala_app/features/auth/model/user_menu.dart';
import 'package:http/http.dart';

class UserMenuRepository {
  Future<List<UserMenu>> fetchMenuItems() async {
    String? uri = dotenv.env['UMENU_URL'];
    final Response response = await get(Uri.parse(uri!));
    if (response.statusCode == HttpStatus.ok) {
      List<dynamic> body = jsonDecode(response.body);
      List<UserMenu> entities =
          body.map((dynamic userMenu) => UserMenu.fromJson(userMenu)).toList();
      return entities;
    } else {
      throw 'no entities';
    }
  }
}
