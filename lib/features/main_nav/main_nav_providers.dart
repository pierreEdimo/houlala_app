import 'package:flutter_riverpod/flutter_riverpod.dart';

final mainNavStateNotifierProvider =
    StateNotifierProvider.autoDispose<MainNavStateNotifier, int>(
        (ref) => MainNavStateNotifier());

class MainNavStateNotifier extends StateNotifier<int> {
  MainNavStateNotifier() : super(0);

  void onItemTaped(int index) {
    state = index;
  }
}
