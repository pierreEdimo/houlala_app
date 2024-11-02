import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_menu.freezed.dart';
part 'user_menu.g.dart';

@freezed
class UserMenu with _$UserMenu{
    factory UserMenu({
      int? id,
      String? title,
      String? thumbnail,
      String? route
  }) = _UserMenu;

    factory UserMenu.fromJson(Map<String, dynamic> json) => _$UserMenuFromJson(json);
}