import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:houlala_app/features/product_type/product_type.dart';

part 'product_type_map.state.freezed.dart';

@freezed
class ProductTypeMapState with _$ProductTypeMapState {
  factory ProductTypeMapState({
    @Default(true) bool loading,
    @Default('') String errorMessage,
    @Default({}) Map<int, List<ProductType>>? productTypeMap,
}) = _ProductTypeMapState;
}