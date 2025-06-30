import 'dart:convert';
import 'dart:io';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:houlala_app/features/suggestion/suggestion.dart';
import 'package:houlala_app/features/suggestion/suggestion_result.dart';
import 'package:http/http.dart';

class SuggestionRepository {
  static const local = 'LOCAL';
  static const user = 'USER';

  Future<SuggestionResult> filterSuggestions(String term,String searchCategory, String? userId) {
    String uri = '${dotenv.env['SUGGESTION_URL']}?userId=$userId&searchCategory=$searchCategory';

    if (userId != null) {
      uri = '$uri&userId=$userId';
    }

    return _fetchSuggestions(uri);
  }

  Future<SuggestionResult> fetchLocasSuggestion(String userId) async {
    String uri = '${dotenv.env['SUGGESTION_URL']}?userId=$userId&searchCategory=$local';

    return _fetchSuggestions(uri);
  }

  Future<SuggestionResult> fetchUsersSuggestion(String userId) async {
    String uri = '${dotenv.env['SUGGESTION_URL']}?userId=$userId&searchCategory=$user';

    return _fetchSuggestions(uri);
  }

  Future<SuggestionResult> _fetchSuggestions(String uri) async {
    final Response response = await get(Uri.parse(uri));

    if (response.statusCode != HttpStatus.ok) {
      throw const HttpException("erreur lors du chargement des suggestions");
    }

    return SuggestionResult.fromJson(jsonDecode(response.body));
  }

  Future<Suggestion> saveWord(Suggestion suggestion) async {
    final Response response = await post(
      Uri.parse('${dotenv.env['SUGGESTION_URL']}'),
      body: jsonEncode(suggestion)
    );

    if (response.statusCode != HttpStatus.created) {
      throw 'erreur lors de la creation des suggestions';
    }

    return Suggestion.fromJson(jsonDecode(response.body));
  }
}
