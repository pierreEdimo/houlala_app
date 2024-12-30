import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:houlala_app/features/category/model/category_model.dart';

import '../../product_type/models/product_type.dart';
import '../../locals/model/local_model.dart';

part 'product.freezed.dart';
part 'product.g.dart';

@freezed
class Product with _$Product {
  factory Product({
    int? id,
    String? name,
    String? description,
    double? unitSellingPrice,
    double? unitBuyingPrice,
    @Default(1) int? quantity,
    @Default(1) int? defaultQuantity,
    List<String>? images,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? availableDate,
    CategoryModel? category,
    ProductType? productType,
    LocalModel? local,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}
