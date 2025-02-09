import 'package:freezed_annotation/freezed_annotation.dart';

part 'policy_state.freezed.dart';

@freezed
class PolicyState with _$PolicyState {
  factory PolicyState({
    @Default(true) bool loading,
    @Default('') String htmlContent,
}) = _PolicyState;
}