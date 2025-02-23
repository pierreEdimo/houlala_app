import 'package:freezed_annotation/freezed_annotation.dart';
import '../model/user_model.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState{
  factory AuthState({
    @Default(false) bool loading,
    @Default('') String token,
    @Default(false) bool loggedIn,
    @Default(null) UserModel? connectedUser,
    @Default('') String errorMessage,
    @Default(null) UserModel? gastUser,
  }) = _AuthState;
}