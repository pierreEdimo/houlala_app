import 'dart:convert';
import 'dart:io';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:houlala_app/features/auth/model/login.dart';
import 'package:houlala_app/features/auth/model/register.dart';
import 'package:houlala_app/features/auth/model/user_model.dart';
import 'package:houlala_app/helpers/token_helper.dart';
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

  Future<Response> register(Register register) async {
    final Response response = await post(
        Uri.parse('${dotenv.env['AUTH_URL']}/register'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8'
        },
        body: jsonEncode(register));
    return response;
  }

  Future<UserModel> fetchConnectedUser({String? userToken}) async {
    var token = userToken ?? await TokenHelper.getToken();
    final Response response = await get(
        Uri.parse('${dotenv.env['AUTH_URL']}/user'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': 'Bearer $token'
        });

    if (response.statusCode == HttpStatus.ok) {
      return UserModel.fromJson(jsonDecode(response.body));
    } else {
      throw 'No user found';
    }
  }
}
