import 'dart:convert';
import 'dart:io';

import 'package:houlala_app/features/suggestion/suggestion_result.dart';
import 'package:http/http.dart';

class SuggestionRepository {
  Future<List<SuggestionResult>> _fetchSuggestionsFromDb(String uri) async {
    final Response response = await get(Uri.parse(uri));

    if (response.statusCode != HttpStatus.ok) {
      throw const HttpException("erreur lors du chargement des suggestions");
    }

    List<dynamic> body = jsonDecode(response.body);
    return body
        .map((dynamic suggestion) => SuggestionResult.fromJson(suggestion))
        .toList();
  }
}
