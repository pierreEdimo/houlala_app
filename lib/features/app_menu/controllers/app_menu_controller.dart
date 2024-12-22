import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:houlala_app/features/app_menu/model/app_menu.dart';
import 'package:houlala_app/features/app_menu/providers/app_menu_provider.dart';

class UserMenuController {
  final WidgetRef? ref;

  UserMenuController(this.ref) : super();

  String get errorMessage {
    return ref!.watch(appMenuStateNotifierProvider).errorMessage;
  }

  List<AppMenu> get entities {
    return ref!.watch(appMenuStateNotifierProvider).menuItems;
  }
}
