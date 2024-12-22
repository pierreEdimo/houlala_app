import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:houlala_app/features/products/model/product.dart';

part 'cart_item.freezed.dart';

part 'cart_item.g.dart';

@freezed
class CartItem with _$CartItem {
  factory CartItem({
    int? id,
    String? userId,
    Product? product,
    int? quantity,
    double? price,
  }) = _CartItem;

  factory CartItem.fromJson(Map<String, dynamic> json) =>
      _$CartItemFromJson(json);
}
