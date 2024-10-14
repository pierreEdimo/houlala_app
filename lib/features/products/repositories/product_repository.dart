import 'dart:convert';
import 'dart:io';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart';
import '../model/product.dart';

class ProductRepository {
  Future<List<Product>> fetchProducts() async {
    String? uri = dotenv.env['PRODUCT_URL'];
    final Response response = await get(Uri.parse(uri!));
    if (response.statusCode == HttpStatus.ok) {
      List<dynamic> body = jsonDecode(response.body);
      List<Product> products =
          body.map((dynamic product) => Product.fromJson(product)).toList();
      return products;
    } else {
      throw 'no products';
    }
  }
}
