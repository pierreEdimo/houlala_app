import 'dart:convert';
import 'dart:io';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart';
import '../models/product_type.dart';

class ProductTypeRepository {
  Future<List<ProductType>> fetchSubCategories() async {
    String? uri = dotenv.env['SUBCATEGORY_URL'];
    final Response response = await get(Uri.parse(uri!));
    if (response.statusCode == HttpStatus.ok) {
      List<dynamic> body = jsonDecode(response.body);
      List<ProductType> categories = body
          .map((dynamic category) => ProductType.fromJson(category))
          .toList();
      return categories;
    } else {
      throw 'no categories';
    }
  }

  Future<Map<int, List<ProductType>>> fetchMappedTypes() async {
    String? uri = dotenv.env['TYPE_URL'];
    final Response response = await get(Uri.parse(uri!));
    if (response.statusCode == 200) {
      final Map<String, dynamic> data = json.decode(response.body);
      final Map<int, List<ProductType>> mappedTypes = data.map((key, value) {
        int typeId = int.parse(key);
        List<ProductType> products = (value as List)
            .map((productJson) => ProductType.fromJson(productJson))
            .toList();
        return MapEntry(typeId, products);
      });
      return mappedTypes;
    } else {
      throw Exception('Failed to load mapped types: ${response.statusCode}');
    }
  }
}
