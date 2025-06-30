import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:houlala_app/features/suggestion/suggestion_result.dart';

part 'suggestion_state.freezed.dart';

@freezed
class SuggestionState with _$SuggestionState {
  factory SuggestionState({
    @Default(null) SuggestionResult? usersResult,
    @Default(null) SuggestionResult? localsResult,
    @Default(null) SuggestionResult? searchResult,
  }) = _SuggestionState;
}
