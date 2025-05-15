import 'package:flutter_riverpod/flutter_riverpod.dart';

final searchProductStateNotifierProvider =
    StateNotifierProvider.autoDispose<SearchProductStateNotifier, bool>(
        (ref) => SearchProductStateNotifier()
    );

class SearchProductStateNotifier extends StateNotifier<bool> {
  SearchProductStateNotifier(): super(false);

  void setTrue() {
    state = true;
  }

  void setFalse() {
    state = false;
  }
}