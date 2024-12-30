import 'dart:convert';
import 'dart:io';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:houlala_app/features/address/model/address.dart';
import 'package:houlala_app/helpers/token_helper.dart';
import 'package:http/http.dart';

class AddressRepository {
  Future<List<Address>> getUsersAddress() async {
    var token = await TokenHelper.getToken();
    String? uri = dotenv.env['ADDRESS_URL'];
    final Response response =
        await get(Uri.parse(uri!), headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
      'Authorization': 'Bearer $token'
    });
    if (response.statusCode == HttpStatus.ok) {
      List<dynamic> body = jsonDecode(response.body);
      List<Address> addresses =
          body.map((dynamic address) => Address.fromJson(address)).toList();
      return addresses;
    } else {
      throw 'no adresses';
    }
  }

  Future<Response> createAddress(Address address) async {
    var token = await TokenHelper.getToken();
    String? uri = dotenv.env['ADDRESS_URL'];
    final Response response = await post(Uri.parse(uri!),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': 'Bearer $token'
        },
        body: jsonEncode(address));
    return response;
  }

  Future<Response> editAddress(int id, Address address) async {
    var token = await TokenHelper.getToken();
    String? uri = dotenv.env['ADDRESS_URL'];
    final Response response = await put(Uri.parse('$uri/$id'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': 'Bearer $token'
        },
        body: jsonEncode(address));
    return response;
  }

  Future<Response> deleteAddress(int id) async {
    var token = await TokenHelper.getToken();
    String? uri = dotenv.env['ADDRESS_URL'];
    final Response response = await delete(
      Uri.parse('$uri/$id'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'Authorization': 'Bearer $token'
      },
    );
    return response;
  }
}
