import 'dart:convert';
import 'dart:io';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:houlala_app/helpers/token_helper.dart';
import 'package:http/http.dart';
import '../model/product.dart';

class ProductRepository {
  Future<List<Product>> fetchProducts() async {
    String? uri = dotenv.env['PRODUCT_URL'];
    return _fetchProductFromDb(uri!);
  }

  Future<List<Product>> fetchFavoritesProducts() async {
    String? token = await TokenHelper.getToken();
    String? uri = '${dotenv.env['PRODUCT_URL']}/favorites';
    return _fetchProductFromDb(uri, token: token);
  }

  Future<Response> addProductsToFavorite(int id) async {
    String? token = await TokenHelper.getToken();
    final Response response =
        await post(Uri.parse('${dotenv.env['PRODUCT_URL']}/favorites/$id'),
            headers: <String, String>{
              'Content-Type': 'application/json; charset=UTF-8',
              'Authorization': 'Bearer $token'
            },
            body: null);
    return response;
  }

  Future<Response> removeProductFromFavorite(int id) async {
    String? token = await TokenHelper.getToken();
    final Response response =
        await delete(Uri.parse('${dotenv.env['PRODUCT_URL']}/favorites/$id'),
            headers: <String, String>{
              'Content-Type': 'application/json; charset=UTF-8',
              'Authorization': 'Bearer $token'
            },
            body: null);
    return response;
  }

  Future<Product> fetchSingleProduct(int id) async {
    String? token = await TokenHelper.getToken();
    final Response response =
        await get(Uri.parse('${dotenv.env['PRODUCT_URL']}/$id'),
            headers: token != null
                ? <String, String>{
                    'Content-Type': 'application/json; charset=UTF-8',
                    'Authorization': 'Bearer $token'
                  }
                : null);
    if(response.statusCode == HttpStatus.ok){
      return Product.fromJson(jsonDecode(response.body));
    } else {
      throw "no product";
    }
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

  Future<List<Product>> _fetchProductFromDb(String uri, {String? token}) async {
    final Response response = await get(Uri.parse(uri),
        headers: token != null
            ? <String, String>{
                'Content-Type': 'application/json; charset=UTF-8',
                'Authorization': 'Bearer $token'
              }
            : null);

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
