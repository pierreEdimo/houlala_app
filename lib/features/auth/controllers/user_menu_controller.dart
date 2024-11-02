import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:houlala_app/features/auth/model/user_menu.dart';
import 'package:houlala_app/features/auth/providers/user_menu_provider.dart';

class UserMenuController {
  final WidgetRef? ref;

  UserMenuController(this.ref) : super();

  String get errorMessage {
    return ref!.watch(userMenuStateNotifierProvider).errorMessage;
  }

  List<UserMenu> get entities {
    return ref!.watch(userMenuStateNotifierProvider).menuItems;
  }
}
