import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:houlala_app/features/auth/model/user_menu.dart';

part 'user_menu_state.freezed.dart';

@freezed
class UserMenuState with _$UserMenuState{
  factory UserMenuState({
    @Default([]) List<UserMenu> menuItems,
    @Default('') String errorMessage
}) = _UserMenuState;
}