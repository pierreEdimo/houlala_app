import 'package:freezed_annotation/freezed_annotation.dart';

part 'suggestion_state.freezed.dart';

@freezed
class SuggestionState with _$SuggestionState {
  factory SuggestionState({
    @Default([]) List<String> usersResult,
    @Default([]) List<String> localsResult,
    @Default([]) List<String> searchResult,
    @Default([]) List<String> localUsersResult,
    @Default([]) List<String> localLocalsResult,
  }) = _SuggestionState;
}
