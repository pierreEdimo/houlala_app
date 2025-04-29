import 'dart:convert';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:houlala_app/features/locals/local_model.dart';
import 'package:http/http.dart';

class LocalRepository {
  Future<List<LocalModel>> fetchLocals() async {
    String? uri = dotenv.env['LOCAL_URL'];
    return await _fetchFromApi(uri!);
  }

  Future<List<LocalModel>> filterLocals(String term,
      {int? productTypeId}) async {
    String? uri = '${dotenv.env['LOCAL_URL']}/search?term=$term';
    if (productTypeId != null) {
      uri += '&productTypeId=$productTypeId';
    }
    return await _fetchFromApi(uri);
  }

  Future<List<LocalModel>> _fetchFromApi(String uri) async {
    final Response response = await get(Uri.parse(uri));
    if (kDebugMode) {
      print(response.statusCode);
    }
    if (response.statusCode == HttpStatus.ok) {
      List<dynamic> body = jsonDecode(response.body);
      List<LocalModel> locals =
          body.map((dynamic seller) => LocalModel.fromJson(seller)).toList();
      return locals;
    } else {
      throw 'no locals';
    }
  }
}
