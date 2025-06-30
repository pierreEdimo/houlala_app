import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:houlala_app/features/stock/stock.dart';

part 'stock_state.freezed.dart';

@freezed
class StockState with _$StockState {
  factory StockState({
    @Default(null) Stock? stock,
    @Default(true) bool loading,
    @Default('') String errorMessage,
}) = _StockState;
}