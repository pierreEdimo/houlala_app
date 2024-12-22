import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:houlala_app/features/app_menu/model/app_menu.dart';
import 'package:houlala_app/features/app_menu/repository/app_menu.repository.dart';
import 'package:houlala_app/features/app_menu/state/app_menu_state.dart';

final appMenuRepositoryProvider =
    Provider<AppMenuRepository>((ref) => AppMenuRepository());

final appMenuStateNotifierProvider =
    StateNotifierProvider<AppMenuStateNotifier, AppMenuState>(
        (ref) => AppMenuStateNotifier(ref.watch(appMenuRepositoryProvider)));

final class AppMenuStateNotifier extends StateNotifier<AppMenuState> {
  final AppMenuRepository appMenuRepository;

  AppMenuStateNotifier(this.appMenuRepository) : super(AppMenuState()) {
    fetchAppMenu();
  }

  Future<void> fetchAppMenu() async {
    try {
      List<AppMenu> entities = await appMenuRepository.fetchMenuItems();
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
