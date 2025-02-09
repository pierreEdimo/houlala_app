import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:houlala_app/features/term/state/term_state.dart';

import '../../../helpers/assets_loader.dart';

final termStateNotifierProvider =
    StateNotifierProvider<TermStateNotifier, TermState>(
        (_) => TermStateNotifier());

final class TermStateNotifier extends StateNotifier<TermState> {
  TermStateNotifier() : super(TermState()) {
    loadTermContent();
  }

  Future<void> loadTermContent() async {
    String htmlContent = await AssetLoader.loadAsset('texts/term.html');
    state = state.copyWith(loading: false, htmlContent: htmlContent);
  }
}
