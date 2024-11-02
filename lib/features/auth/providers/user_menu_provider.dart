import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:houlala_app/features/auth/model/user_menu.dart';
import 'package:houlala_app/features/auth/repositories/user_menu_repository.dart';
import 'package:houlala_app/features/auth/state/user_menu_state.dart';

final userMenuRepositoryProvider =
    Provider<UserMenuRepository>((ref) => UserMenuRepository());

final userMenuStateNotifierProvider =
    StateNotifierProvider<UserMenuStateNotifier, UserMenuState>(
        (ref) => UserMenuStateNotifier(ref.watch(userMenuRepositoryProvider)));

final class UserMenuStateNotifier extends StateNotifier<UserMenuState> {
  final UserMenuRepository userMenuRepository;

  UserMenuStateNotifier(this.userMenuRepository) : super(UserMenuState()) {
    fetchUserMenu();
  }

  Future<void> fetchUserMenu() async {
    try {
      List<UserMenu> entities = await userMenuRepository.fetchMenuItems();
      state = state.copyWith(menuItems: entities, errorMessage: '');
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      state = state.copyWith(
          errorMessage: 'erreur lors du chargement du menu utilisateur');
    }
  }
}
