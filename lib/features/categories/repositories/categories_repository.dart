import 'dart:convert';
import 'dart:io';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart';

import '../model/categories.dart';

class CategoriesRepository{
  Future<List<Categories>> fetchCategories() async {
    String? uri = dotenv.env['CATEGORIES_URL'];
    final Response response = await get(Uri.parse(uri!));
    if(response.statusCode == HttpStatus.ok){
      List<dynamic> body = jsonDecode(response.body);
      List<Categories> categories =
          body.map((dynamic category) => Categories.fromJson(category)).toList();
      return categories;
    } else {
      throw 'no categories';
    }
  }
}