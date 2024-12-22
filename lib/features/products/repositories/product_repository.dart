import 'dart:convert';
import 'dart:io';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart';
import '../model/product.dart';

class ProductRepository {
  Future<List<Product>> fetchProducts() async {
    String? uri = dotenv.env['PRODUCT_URL'];
    return _fetchProductFromDb(uri!);
  }

  Future<List<Product>> searchProducts(String term,
      {int? categoryId, int? subCategoryId, int? sellerId}) async {
    String? uri = '${dotenv.env['PRODUCT_URL']}/search?term=$term';

    if (categoryId != null) {
      uri += '&categoryId=$categoryId';
    }

    if (subCategoryId != null) {
      uri += '&subCategory=$subCategoryId';
    }

    if (sellerId != null) {
      uri += '&sellerId=$sellerId';
    }
    return _fetchProductFromDb(uri);
  }

  Future<List<Product>> _fetchProductFromDb(String uri) async {
    final Response response = await get(Uri.parse(uri));
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
