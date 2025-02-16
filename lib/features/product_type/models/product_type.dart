import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_ce/hive.dart';
import 'package:houlala_app/features/category/model/category_model.dart';

part 'product_type.freezed.dart';
part 'product_type.g.dart';

@freezed
@HiveType(typeId: 2)
class ProductType extends HiveObject with _$ProductType {

  ProductType._();

  factory ProductType({
    // ignore: invalid_annotation_target
    @HiveField(0) @JsonKey(name: 'id')int? dbId,
    
    @HiveField(1)
    String? name,
    
    @HiveField(2)
    String? imageUrl,

    @HiveField(3)
    String? route,
    
    @HiveField(4)
    CategoryModel? category,
  }) = _ProductType;

  factory ProductType.fromJson(Map<String, dynamic> json) =>
      _$ProductTypeFromJson(json);
}
