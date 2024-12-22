import 'dart:convert';
import 'dart:io';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:houlala_app/features/carts/model/cart_item.dart';
import 'package:houlala_app/features/carts/model/mapped_cart_item.dart';
import 'package:http/http.dart';

class CartRepository {
  Future<List<MappedCartItem>> fetchCartItems(String userId) async {
    String? uri = dotenv.env['CART_URL'];
    final Response response = await get(Uri.parse('$uri/$userId'));
    if (response.statusCode == HttpStatus.ok) {
      List<dynamic> body = jsonDecode(response.body);
      List<MappedCartItem> mappedItems =
          body.map((dynamic item) => MappedCartItem.fromJson(item)).toList();
      return mappedItems;
    } else {
      throw 'no cartItems';
    }
  }

  Future<Response> addProductToCart(CartItem createCartItem) async {
    String? uri = dotenv.env['CART_URL'];
    return await post(Uri.parse('$uri'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8'
        },
        body: jsonEncode(createCartItem));
  }

  Future<Response> removeProductFromCart(int id, String userId) async {
    String? uri = dotenv.env['CART_URL'];
    return await delete(Uri.parse('$uri/$id/users/$userId'));
  }

  Future<Response> changeItemQuantity(String uri) async {
    return await put(Uri.parse(uri), body: {});
  }
}
