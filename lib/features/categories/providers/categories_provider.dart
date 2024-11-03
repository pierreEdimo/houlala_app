import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../model/categories.dart';
import '../repositories/categories_repository.dart';
import '../state/categories_state.dart';

final categoriesRepositoryProvider =
    Provider<CategoriesRepository>((ref) => CategoriesRepository());

final categoriesStateNotifierProvider =
StateNotifierProvider<CategoriesStateNotifier, CategoriesState>(
        (ref) => CategoriesStateNotifier(ref.watch(categoriesRepositoryProvider)));

class CategoriesStateNotifier extends StateNotifier<CategoriesState> {
  final CategoriesRepository categoriesRepository;

  CategoriesStateNotifier(this.categoriesRepository)
      : super(CategoriesState()) {
    loadCategories();
  }

  Future<void> loadCategories() async {
    try {
      state = state.copyWith(loading: true);
      List<Categories> categories =
          await categoriesRepository.fetchCategories();
      state = state.copyWith(loading: false, categoryList: categories);
    } catch (exception) {
      state = state.copyWith(
        loading: false,
        errorMessage: "Les categories n'ont pas pu etre charges. "
      );
    }
  }
}
