import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:houlala_app/features/auth/auth_provider.dart';
import 'package:houlala_app/features/auth/user_model.dart';
import 'package:houlala_app/features/suggestion/suggestion.dart';
import 'package:houlala_app/features/suggestion/suggestion_repository.dart';
import 'package:houlala_app/features/suggestion/suggestion_result.dart';
import 'package:houlala_app/features/suggestion/suggestion_state.dart';
import 'package:houlala_app/helpers/boxes.dart';
import 'package:houlala_app/helpers/toast_notification.dart';

final suggestionRepositoryProvider =
    Provider<SuggestionRepository>((_) => SuggestionRepository());

final suggestionStateNotifierProvider =
    StateNotifierProvider<SuggestionStateNotifier, SuggestionState>((ref) =>
        SuggestionStateNotifier(ref.watch(suggestionRepositoryProvider),
            ref.watch(authStateNotifierProvider).connectedUser));

class SuggestionStateNotifier extends StateNotifier<SuggestionState> {
  final SuggestionRepository suggestionRepository;
  final UserModel? userModel;
  final suggestionList = Boxes.getSuggestions();

  static const product = 'PRODUCT';
  static const local = 'LOCAL';

  SuggestionStateNotifier(this.suggestionRepository, this.userModel)
      : super(SuggestionState()) {
    if (userModel != null) {
      fetchProductsSuggestions(userModel!.id!);
      fetchLocalsSuggestions(userModel!.id!);
    } else {
      loadLocalLocalsSuggestions();
      loadProductsLocalSuggestions();
    }
  }

  Future<void> fetchProductsSuggestions(String userId) async {
    try {
      SuggestionResult result =
          await suggestionRepository.fetchProductsSuggestions(userId);
      state = state.copyWith(productsResult: result.suggestions!);
    } on Exception {
      CustomToastNotification.showErrorAction(
          "Erreur lors du chargement des suggestions.");
    }
  }

  Future<void> fetchLocalsSuggestions(String userId) async {
    try {
      SuggestionResult result =
          await suggestionRepository.fetchLocalsSuggestion(userId);
      state = state.copyWith(localsResult: result.suggestions!);
    } on Exception {
      CustomToastNotification.showErrorAction(
          "Erreur lors du chargement des suggestions.");
    }
  }

  Future<void> filterSuggestions(
      String term, String searchCategory, String? userId) async {
    try {
      SuggestionResult result = await suggestionRepository.filterSuggestions(
          term, searchCategory, userId);
      state = state.copyWith(searchResult: result.suggestions!);
    } on Exception {
      CustomToastNotification.showErrorAction(
          "Erreur lors du chargement des suggestions.");
    }
  }

  Future<void> loadProductsLocalSuggestions() async {
    List<String> savedWords = [];
    List<String> removedDuplicates = [];

    List<Suggestion> usersSuggestions =
        suggestionList.values.where((su) => su.searchCategory == product).toList();

    if (usersSuggestions.isNotEmpty) {
      for (int i = 0; i < usersSuggestions.length; i++) {
        savedWords.add(usersSuggestions[i].word!.toLowerCase());
      }

      removedDuplicates = savedWords.toSet().toList();
    }
    state = state.copyWith(localProductsResult: removedDuplicates);
  }

  Future<void> loadLocalLocalsSuggestions() async {
    List<String> savedWords = [];
    List<String> removedDuplicates = [];

    List<Suggestion> localsSuggestions = suggestionList.values
        .where((su) => su.searchCategory == local)
        .toList();

    if (localsSuggestions.isNotEmpty) {
      for (int i = 0; i < localsSuggestions.length; i++) {
        savedWords.add(localsSuggestions[i].word!.toLowerCase());
      }

      removedDuplicates = savedWords.toSet().toList();
    }

    state = state.copyWith(localLocalsResult: removedDuplicates);
  }

  Future<void> saveWord(Suggestion suggestion) async {
    try {
      Suggestion savedSuggestion =
          await suggestionRepository.saveWord(suggestion);

      if (savedSuggestion.userId != null) {
        suggestionList.add(savedSuggestion);
      }

      if (savedSuggestion.userId != null &&
          savedSuggestion.searchCategory == product) {
        state = state.copyWith(
            productsResult: [...state.productsResult, savedSuggestion.word!]);
      } else if (savedSuggestion.userId != null &&
          savedSuggestion.searchCategory == local) {
        state = state.copyWith(
            localsResult: [...state.localsResult, savedSuggestion.word!]);
      } else if (savedSuggestion.userId == null &&
          savedSuggestion.searchCategory == product) {
        state = state.copyWith(localProductsResult: [
          ...state.localProductsResult,
          savedSuggestion.word!
        ]);
      } else if (savedSuggestion.userId == null &&
          savedSuggestion.searchCategory == local) {
        state = state.copyWith(localLocalsResult: [
          ...state.localLocalsResult,
          savedSuggestion.word!
        ]);
      }
    } on Exception {
      CustomToastNotification.showErrorAction(
          "Erreur lors de la creation des suggestions.");
    }
  }
}
