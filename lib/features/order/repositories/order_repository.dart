import 'dart:convert';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:houlala_app/features/order/model/order_model.dart';
import 'package:http/http.dart';

class OrderRepository {
  Future<Response> placeOrder(OrderModel order) async {
    final Response response = await post(
      Uri.parse('${dotenv.env['ORDER_URL']}'),
      headers: <String, String> {
        'Content-Type': 'application/json; charset=UTF-8'
      }, 
      body: jsonEncode(order)
    );
    return response;
  }
}
