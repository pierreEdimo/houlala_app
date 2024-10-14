import 'package:freezed_annotation/freezed_annotation.dart';

import '../../categories/model/categories.dart';
import '../../sellers/model/seller.dart';
import '../../sub_categories/models/sub_category.dart';

part 'product.freezed.dart';

part 'product.g.dart';

@freezed
class Product with _$Product {
  factory Product(
      {int? id,
      String? name,
      String? longDescription,
      int? sellingPrice,
      double? buyingPrice,
      int? availableQuantity,
      @Default(1) int? quantity,
      String? sku,
      List<String>? images,
      DateTime? createdAt,
      DateTime? updatedAt,
      DateTime? availableDate,
      Categories? category,
      SubCategory? subCategory,
      Seller? seller}) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}
