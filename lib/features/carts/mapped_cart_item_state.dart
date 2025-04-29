import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:houlala_app/features/carts/mapped_cart_item.dart';

part 'mapped_cart_item_state.freezed.dart';

@freezed
class MappedCartItemState with _$MappedCartItemState {
    factory MappedCartItemState({
      @Default([]) List<MappedCartItem> cartItemList,
      @Default('') String errorMessage,
      @Default(false) bool loading,
  }) = _MappedCartItemState;
}