import 'package:freezed_annotation/freezed_annotation.dart';
import '../model/categories.dart';
part 'categories_state.freezed.dart';

@freezed
class CategoriesState with _$CategoriesState {
  factory CategoriesState({
    @Default([]) List<Categories> categoryList,
    @Default([]) List<Categories> topCategoryList,
    @Default(false) bool loading,
    @Default('') String errorMessage,
  }) = _CategoriesState;
}
