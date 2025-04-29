import 'dart:convert';
import 'dart:io';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:houlala_app/features/order/order_model.dart';
import 'package:houlala_app/helpers/token_helper.dart';
import 'package:http/http.dart';

class OrderRepository {
  Future<Response> placeOrder(OrderModel order) async {
    final Response response = await post(
        Uri.parse('${dotenv.env['ORDER_URL']}'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8'
        },
        body: jsonEncode(order));
    return response;
  }

  Future<List<OrderModel>> fetchUsersOrders() async {
    String? token = await TokenHelper.getToken();
    if (token != null) {
      final Response response = await get(
          Uri.parse('${dotenv.env['ORDER_URL']}'),
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
            'Authorization': 'Bearer $token'
          });
      if (response.statusCode == HttpStatus.ok) {
        List<dynamic> body = jsonDecode(response.body);
        List<OrderModel> orders =
            body.map((dynamic order) => OrderModel.fromJson(order)).toList();
        return orders;
      } else {
        throw 'no orders';
      }
    }
    return [];
  }
}
