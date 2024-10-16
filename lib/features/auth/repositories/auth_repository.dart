import 'dart:convert';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:houlala_app/features/auth/model/login.dart';
import 'package:http/http.dart';

class AuthRepository {
  Future<Response> login(Login login) async {
    final Response response = await post(
        Uri.parse('${dotenv.env['AUTH_URL']}/login'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8'
        },
        body: jsonEncode(login));
    return response;
  }
}
