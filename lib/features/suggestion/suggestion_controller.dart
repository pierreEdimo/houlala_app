import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:houlala_app/features/suggestion/suggestion.dart';
import 'package:houlala_app/features/suggestion/suggestion_provider.dart';

class SuggestionController {
  final WidgetRef? ref;

  SuggestionController(this.ref) : super();

  void saveWord(Suggestion suggestion) {
    ref!.read(suggestionStateNotifierProvider.notifier).saveWord(suggestion);
  }

  void loadProductsSuggestions(String userId) {
    ref!.read(suggestionStateNotifierProvider.notifier).fetchProductsSuggestions(userId);
  }

  void loadLocalsSuggestions(String userId) {
    ref!.read(suggestionStateNotifierProvider.notifier).fetchLocalsSuggestions(userId);
  }

  void filtersSuggestions(String term, String userId, String searchCategory) {
    ref!.read(suggestionStateNotifierProvider.notifier).filterSuggestions(term, searchCategory, userId);
  }

  void loadLocalProductsSuggestions() {
    ref!.read(suggestionStateNotifierProvider.notifier).loadProductsLocalSuggestions();
  }

  void loadLocalLocalsSuggestions() {
    ref!.read(suggestionStateNotifierProvider.notifier).loadLocalLocalsSuggestions();
  }

  List<String> get productsSuggestions {
    return ref!.watch(suggestionStateNotifierProvider).productsResult;
  }

  List<String> get localsLocations {
    return ref!.watch(suggestionStateNotifierProvider).localsResult;
  }

  List<String> get localProductsLocations {
    return ref!.watch(suggestionStateNotifierProvider).localProductsResult;
  }

  List<String> get localLocalsLocations {
    return ref!.watch(suggestionStateNotifierProvider).localLocalsResult;
  }
}