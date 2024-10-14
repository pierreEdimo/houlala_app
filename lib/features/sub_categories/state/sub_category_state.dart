import 'package:freezed_annotation/freezed_annotation.dart';
import '../models/sub_category.dart';

part 'sub_category_state.freezed.dart';

@freezed
class SubCategoryState with _$SubCategoryState {
  factory SubCategoryState({
    @Default([]) List<SubCategory> categoriesList,
    @Default(false) bool loading,
    @Default('') String errorMessage,
  }) = _SubCategoryState;
}
