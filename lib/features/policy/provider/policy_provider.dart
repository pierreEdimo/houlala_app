import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:houlala_app/features/policy/state/policy_state.dart';
import 'package:houlala_app/helpers/assets_loader.dart';

final policyStateNotifierProvider =
StateNotifierProvider<PolicyStateNotifier, PolicyState>(
        (_) => PolicyStateNotifier());

final class PolicyStateNotifier extends StateNotifier<PolicyState> {
  PolicyStateNotifier() : super(PolicyState()) {
    loadAboutContent();
  }

  Future<void> loadAboutContent() async {
    String htmlContent = await AssetLoader.loadAsset('texts/policy.html');
    state = state.copyWith(loading: false, htmlContent: htmlContent);
  }
}
