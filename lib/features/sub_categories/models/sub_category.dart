import 'package:freezed_annotation/freezed_annotation.dart';
import '../../categories/model/categories.dart';

part 'sub_category.freezed.dart';
part 'sub_category.g.dart';

@freezed
class SubCategory with _$SubCategory {
  factory SubCategory({
    int? id,
    String? name,
    String? imageUrl,
    Categories? category,
    String? route,
  }) = _SubCategory;

  factory SubCategory.fromJson(Map<String, dynamic> json) => _$SubCategoryFromJson(json);
}