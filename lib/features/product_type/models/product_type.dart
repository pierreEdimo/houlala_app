import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:houlala_app/features/category/model/category_model.dart';

part 'product_type.freezed.dart';
part 'product_type.g.dart';

@freezed
class ProductType with _$ProductType {
  factory ProductType({
    int? id,
    String? name,
    String? imageUrl,
    String? route,
    CategoryModel? category,
  }) = _ProductType;

  factory ProductType.fromJson(Map<String, dynamic> json) =>
      _$ProductTypeFromJson(json);
}
