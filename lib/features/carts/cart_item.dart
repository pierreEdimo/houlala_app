import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_ce/hive.dart';
import 'package:houlala_app/features/products/product.dart';

part 'cart_item.freezed.dart';
part 'cart_item.g.dart';

@freezed
@HiveType(typeId: 5)
class CartItem extends HiveObject with _$CartItem {

  CartItem._();

  factory CartItem({
    //ignore: invalid_annotation_target
    @HiveField(0) @JsonKey(name: 'id') int? dbId,
    
    @HiveField(1)
    String? userId,

    @HiveField(2)
    Product? product,
    
    @HiveField(3)
    int? quantity,
    
    @HiveField(4)
    double? price,
  }) = _CartItem;

  factory CartItem.fromJson(Map<String, dynamic> json) =>
      _$CartItemFromJson(json);
}
