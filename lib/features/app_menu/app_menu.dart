import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_menu.freezed.dart';
part 'app_menu.g.dart';

@freezed
class AppMenu with _$AppMenu {
  factory AppMenu({
    int? id,
    String? title,
    String? thumbnail,
    String? route,
  }) = _AppMenu;

  factory AppMenu.fromJson(Map<String, dynamic> json) =>
      _$AppMenuFromJson(json);
}
