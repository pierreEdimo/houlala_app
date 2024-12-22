import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:houlala_app/features/category/model/category_model.dart';


part 'category_state.freezed.dart';

@freezed
class CategoryState with _$CategoryState {
  factory CategoryState({
    @Default([]) List<CategoryModel> categoryList,
    @Default([]) List<CategoryModel> topCategoryList,
    @Default(false) bool loading,
    @Default('') String errorMessage,
  }) = _CategoryState;
}
