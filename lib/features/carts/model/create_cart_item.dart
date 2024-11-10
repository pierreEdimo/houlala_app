import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_cart_item.freezed.dart';

part 'create_cart_item.g.dart';

@freezed
class CreateCartItem with _$CreateCartItem {
  factory CreateCartItem({
    String? userId,
    int? productId,
    int? quantity,
    int? price,
  }) = _CreateCartItem;

  factory CreateCartItem.fromJson(Map<String, dynamic> json) =>
      _$CreateCartItemFromJson(json);
}
