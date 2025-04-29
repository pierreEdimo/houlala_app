import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:houlala_app/features/order/order_model.dart';

part 'order_state.freezed.dart';

@freezed
class OrderState with _$OrderState {
  factory OrderState({
    @Default([]) List<OrderModel> orderList,
    @Default('') String errorMessage,
    @Default(false) bool loading,
   }) = _OrderState;
}