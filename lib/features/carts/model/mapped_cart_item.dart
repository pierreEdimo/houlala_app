import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:houlala_app/features/products/model/product.dart';
import '../../sellers/model/seller.dart';

part 'mapped_cart_item.freezed.dart';
part 'mapped_cart_item.g.dart';

@freezed
class MappedCartItem with _$MappedCartItem{
    factory MappedCartItem({
      Seller? seller,
      List<CartItem>? cartItems
  }) = _MappedCartItem;

    factory MappedCartItem.fromJson(Map<String, dynamic> json) => _$MappedCartItemFromJson(json);
}

@freezed
class CartItem with _$CartItem{
    factory CartItem({
      int? id,
      String? userId,
      Product? product,
      int? quantity,
      int? price
  }) = _CartItem;

  factory CartItem.fromJson(Map<String, dynamic> json) => _$CartItemFromJson(json);
}