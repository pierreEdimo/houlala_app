import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_ce/hive.dart';
import 'package:houlala_app/features/category/model/category_model.dart';
import '../product_type/models/product_type.dart';
import '../locals/model/local_model.dart';

part 'product.freezed.dart';
part 'product.g.dart';

@freezed
@HiveType(typeId: 3)
class Product extends HiveObject with _$Product {

  Product._();

  factory Product({
    // ignore: invalid_annotation_target
    @HiveField(0) @JsonKey(name: 'id') int? dbId,
    
    @HiveField(1)
    String? name,
    
    @HiveField(2)
    String? description,
    
    @HiveField(3)
    double? unitSellingPrice,

    @HiveField(4)
    double? unitBuyingPrice,

    @HiveField(5)
    @Default(1) int? quantity,

    @HiveField(6)
    @Default(1) int? defaultQuantity,

    @HiveField(7)
    List<String>? images,

    @HiveField(8)
    DateTime? createdAt,

    @HiveField(9)
    DateTime? updatedAt,

    @HiveField(10)
    DateTime? availableDate,

    @HiveField(11)
    CategoryModel? category,

    @HiveField(12)
    ProductType? productType,

    @HiveField(13)
    LocalModel? local,

    @HiveField(14)
    bool? isFavorite,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}
