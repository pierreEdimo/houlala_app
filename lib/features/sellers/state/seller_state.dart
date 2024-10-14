import 'package:freezed_annotation/freezed_annotation.dart';
import '../model/seller.dart';

part 'seller_state.freezed.dart';

@freezed
class SellerState with _$SellerState {
  factory SellerState({
    @Default([]) List<Seller> sellerList,
    @Default(false) bool loading,
    @Default('') String errorMessage,
  }) = _SellerState;
}
