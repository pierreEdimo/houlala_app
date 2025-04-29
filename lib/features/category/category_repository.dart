import 'dart:convert';
import 'dart:io';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:houlala_app/features/category/category_model.dart';
import 'package:http/http.dart';


class CategoryRepository{
  Future<List<CategoryModel>> fetchCategories() async {
    String? uri = dotenv.env['CATEGORY_URL'];
    final Response response = await get(Uri.parse(uri!));
    if(response.statusCode == HttpStatus.ok){
      List<dynamic> body = jsonDecode(response.body);
      List<CategoryModel> categories =
          body.map((dynamic category) => CategoryModel.fromJson(category)).toList();
      return categories;
    } else {
      throw 'no categories';
    }
  }
}