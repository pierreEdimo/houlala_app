import 'dart:convert';
import 'dart:io';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart';
import '../models/sub_category.dart';

class SubCategoryRepository {
  Future<List<SubCategory>> fetchSubCategories() async {
    String? uri = dotenv.env['SUBCATEGORY_URL'];
    final Response response = await get(Uri.parse(uri!));
    if (response.statusCode == HttpStatus.ok) {
      List<dynamic> body = jsonDecode(response.body);
      List<SubCategory> categories = body
          .map((dynamic category) => SubCategory.fromJson(category))
          .toList();
      return categories;
    } else {
      throw 'no categories';
    }
  }
}
