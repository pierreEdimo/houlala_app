import 'package:houlala_app/features/sub_categories/models/sub_category.dart';

class CategoryArg {
  final String? categoryName;
  final int? categoryId;
  final SubCategory? subCategory;

  CategoryArg({
    this.categoryId,
    this.categoryName,
    this.subCategory,
  });
}
