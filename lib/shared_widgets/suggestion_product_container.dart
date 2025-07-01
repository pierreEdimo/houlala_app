import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:houlala_app/features/auth/auth_controller.dart';
import 'package:houlala_app/features/suggestion/suggestion_controller.dart';
import 'package:houlala_app/shared_widgets/c_container.dart';

class SuggestionProductContainer extends ConsumerWidget {
  const SuggestionProductContainer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    SuggestionController suggestionController = SuggestionController(ref);
    AuthController authController = AuthController(ref);

    var isLoggedIn = authController.isLoggedIn;
    List<String> suggestions = isLoggedIn
        ? suggestionController.productsSuggestions
        : suggestionController.localProductsLocations;
    List<String> searchSuggestionResult =
        suggestionController.searchSuggestionsResult;

    return CustomContainer(
      child: searchSuggestionResult.isEmpty
          ? ListView(
              children:
                  suggestions.map((suggestion) => Text(suggestion)).toList(),
            )
          : ListView(
              children:
                  searchSuggestionResult.map((result) => Text(result)).toList(),
            ),
    );

  }
}
