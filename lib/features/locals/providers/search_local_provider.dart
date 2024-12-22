import 'package:flutter_riverpod/flutter_riverpod.dart';

final searchStateNotifierProvider =
    StateNotifierProvider<SearchStateNotifier, bool>(
        (ref) => SearchStateNotifier());

class SearchStateNotifier extends StateNotifier<bool> {
  SearchStateNotifier() : super(false);

  void setSearchSubmittedTrue() {
    state = true;
  }

  void setSearchSubmittedFalse() {
    state = false;
  }
}
