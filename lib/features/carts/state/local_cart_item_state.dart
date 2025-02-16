import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:houlala_app/features/carts/model/cart_item.dart';

part 'local_cart_item_state.freezed.dart';

@freezed
class LocalCartItemState with _$LocalCartItemState {
  factory LocalCartItemState({
    @Default([]) List<CartItem> cartItemList,
    @Default(true) bool isCartLoading,
    @Default('') String errorMessage,
  }) = _LocalCartItemState;
}
