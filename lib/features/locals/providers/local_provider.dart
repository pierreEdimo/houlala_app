import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:houlala_app/features/locals/model/local_model.dart';
import '../repositories/local_repository.dart';
import '../state/local_model_state.dart';

final localRepositoryProvider =
    Provider<LocalRepository>((ref) => LocalRepository());

final localStateNotifierProvider =
    StateNotifierProvider<LocalStateNotifier, LocalModelState>(
        (ref) => LocalStateNotifier(ref.watch(localRepositoryProvider)));

class LocalStateNotifier extends StateNotifier<LocalModelState> {
  final LocalRepository localRepository;

  LocalStateNotifier(this.localRepository) : super(LocalModelState()) {
    loadLocals();
  }

  Future<void> loadLocals() async {
    try {
      state = state.copyWith(loading: true);
      List<LocalModel> locals = await localRepository.fetchLocals();
      state = state.copyWith(loading: false, localList: locals);
    } catch (exception) {
      state = state.copyWith(
          loading: false,
          errorMessage: "Les commercants n'ont pas pu etre charges.");
    }
  }

  Future<void> searchLocals(String term, {int? productTypeId}) async {
    try {
      state = state.copyWith(loading: true);
      List<LocalModel> locals = await localRepository.filterLocals(term,
          productTypeId: productTypeId);
      state = state.copyWith(loading: false, filteredLocalList: locals);
    } catch (exception) {
      state = state.copyWith(
          loading: false,
          errorMessage: "Les commercants n'ont pas pu etre charges.");
    }
  }

  void resetFilterLocal() {
    state = state.copyWith(filteredLocalList: []);
  }
}
