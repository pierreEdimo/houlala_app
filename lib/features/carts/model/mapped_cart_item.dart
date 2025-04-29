import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:houlala_app/features/locals/local_model.dart';

import 'cart_item.dart';

part 'mapped_cart_item.freezed.dart';
part 'mapped_cart_item.g.dart';

@freezed
class MappedCartItem with _$MappedCartItem{
    factory MappedCartItem({
      LocalModel? local,
      List<CartItem>? cartItems
  }) = _MappedCartItem;

    factory MappedCartItem.fromJson(Map<String, dynamic> json) => _$MappedCartItemFromJson(json);
}