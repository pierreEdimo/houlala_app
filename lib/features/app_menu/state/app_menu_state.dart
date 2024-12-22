import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:houlala_app/features/app_menu/model/app_menu.dart';

part 'app_menu_state.freezed.dart';

@freezed
class AppMenuState with _$AppMenuState {
  factory AppMenuState(
      {@Default([]) List<AppMenu> menuItems,
      @Default('') String errorMessage}) = _AppMenuState;
}
