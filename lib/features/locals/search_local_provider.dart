import 'package:flutter_riverpod/flutter_riverpod.dart';

final searchLocalStateNotifierProvider =
    StateNotifierProvider.autoDispose<SearchLocalStateNotifier, bool>(
        (ref) => SearchLocalStateNotifier());

class SearchLocalStateNotifier extends StateNotifier<bool> {
  SearchLocalStateNotifier() : super(false);

  void setSearchSubmittedTrue() {
    state = true;
  }

  void setSearchSubmittedFalse() {
    state = false;
  }
}
