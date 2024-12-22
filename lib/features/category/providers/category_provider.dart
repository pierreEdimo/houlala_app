import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:houlala_app/features/category/model/category_model.dart';
import '../repository/category_repository.dart';
import '../state/category_state.dart';

final categoryRepositoryProvider =
    Provider<CategoryRepository>((ref) => CategoryRepository());

final categoryStateNotifierProvider =
StateNotifierProvider<CategoryStateNotifier, CategoryState>(
        (ref) => CategoryStateNotifier(ref.watch(categoryRepositoryProvider)));

class CategoryStateNotifier extends StateNotifier<CategoryState> {
  final CategoryRepository categoriesRepository;

  CategoryStateNotifier(this.categoriesRepository)
      : super(CategoryState()) {
    loadCategories();
  }

  Future<void> loadCategories() async {
    try {
      state = state.copyWith(loading: true);
      List<CategoryModel> categories =
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
