import 'package:freezed_annotation/freezed_annotation.dart';

part 'term_state.freezed.dart';

@freezed
class TermState with _$TermState {
  factory TermState({
    @Default(true) bool loading,
    @Default('') String htmlContent,
}) = _TermState;
}