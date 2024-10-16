import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState{
  factory AuthState({
    @Default(false) bool loading,
    @Default('') String token,
    @Default(false) bool loggedIn,
    @Default('') String errorMessage
  }) = _AuthState;
}