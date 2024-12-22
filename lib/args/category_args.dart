import 'package:houlala_app/features/product_type/models/product_type.dart';

class CategoryArg {
  final String? categoryName;
  final int? categoryId;
  final ProductType? productType;

  CategoryArg({
    this.categoryId,
    this.categoryName,
    this.productType,
  });
}
