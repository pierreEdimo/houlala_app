import 'package:freezed_annotation/freezed_annotation.dart';
import '../model/product.dart';
part 'product_state.freezed.dart';

@freezed
class ProductState with _$ProductState {
  factory ProductState({
    @Default([]) List<Product> productList,
    @Default(false) bool loading,
    @Default('') String errorMessage,
    @Default([]) List<Product> bookmarkedList,
  }) = _ProductState;
}