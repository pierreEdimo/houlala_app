import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/sub_category.dart';
import '../repositories/sub_category_repository.dart';
import '../state/sub_category_state.dart';

final subCategoryRepositoryProvider =
    Provider<SubCategoryRepository>((_) => SubCategoryRepository());

final subCategoryStateNotifierProvider = StateNotifierProvider<SubCategoryStateNotifier, SubCategoryState>(
    (ref) => SubCategoryStateNotifier(ref.watch(subCategoryRepositoryProvider))
);

class SubCategoryStateNotifier extends StateNotifier<SubCategoryState> {
  final SubCategoryRepository subCategoryRepository;

  SubCategoryStateNotifier(this.subCategoryRepository)
      : super(SubCategoryState()) {
    loadSubCategories();
  }

  Future<void> loadSubCategories() async {
    try {
      state = state.copyWith(loading: true);
      List<SubCategory> categories =
          await subCategoryRepository.fetchSubCategories();
      state = state.copyWith(loading: false, categoriesList: categories);
    } catch (exception) {
      state = state.copyWith(
          loading: false,
          errorMessage: "Les Categories n'ont pas pu etre charges.");
    }
  }
}
