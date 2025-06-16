import 'package:freezed_annotation/freezed_annotation.dart';

part 'suggestion_result.freezed.dart';
part 'suggestion_result.g.dart';

@freezed
class SuggestionResult with _$SuggestionResult {
  SuggestionResult._();

  factory SuggestionResult({
    String? query,
    List<String>? suggestions,
  }) = _SuggestionResult;

  factory SuggestionResult.fromJson(Map<String, dynamic> json) =>
      _$SuggestionResultFromJson(json);
}
