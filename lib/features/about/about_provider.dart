import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:houlala_app/features/about/about_state.dart';
import 'package:houlala_app/helpers/assets_loader.dart';

final aboutStateNotifierProvider =
    StateNotifierProvider<AboutStateNotifier, AboutState>(
        (_) => AboutStateNotifier());

final class AboutStateNotifier extends StateNotifier<AboutState> {
  AboutStateNotifier() : super(AboutState()) {
    loadAboutContent();
  }

  Future<void> loadAboutContent() async {
    String htmlContent = await AssetLoader.loadAsset('texts/about.html');
    state = state.copyWith(loading: false, htmlContent: htmlContent);
  }
}
